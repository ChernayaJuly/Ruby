require_relative 'ListReader'
require_relative 'validator_read'

class TerminalViewListReader
  include Validator_read

  attr_accessor :list_reader

  def initialize
    self.list_reader = ListReader.new('data.txt')
  end

  def show
    puts list_reader.show
  end

  def add
    begin
      puts 'Введите данные читателя:'

      print 'ФИО: '
      fullname = STDIN.gets.chomp
      unless Validator_read.is_fullname? fullname
        puts "Некоректное ФИО!\nВведите заново: "
        fullname = STDIN.gets.chomp
      end
      fullname = Validator_read.to_valid_fullname fullname

      print 'Дата рождения: '
      birthdate = STDIN.gets.chomp
      until Validator.is_birthdate? birthdate
        puts "Некоректная дата рождения!\nВведите заново: "
        birthdate = STDIN.gets.chomp
      end
      birthdate = Validator_read.to_valid_birthdate birthdate

      print 'Номер телефона: '
      mobphone = STDIN.gets.chomp
      until Validator.is_russian_mobphone? mobphone
        puts "Некоректный моб. телефон!\nВведите заново: "
        mobphone = STDIN.gets.chomp
      end
      mobphone = Validator_read.to_valid_mobphone mobphone

      print 'Адрес: '
      address = STDIN.gets.chomp

      print 'E-mail: '
      email = STDIN.gets.chomp
      until Validator_read.is_email? email
        puts "Некоректный email!\nВведите заново: "
        email = STDIN.gets.chomp
      end
      email = Validator_read.to_valid_email email

      print 'Паспорт: '
      passport = STDIN.gets.chomp
      until Validator_read.is_passport? passport
        puts "Некоректный паспорт!\nВведите заново: "
        passport = STDIN.gets.chomp
      end
      passport = Validator_read.to_valid_passport passport

      print 'Задолженность: '
      debt = STDIN.gets.chomp.to_i

      emp = reader.new(fullname, birthdate, mobphone, address, email, passport, debt)
      list_reader.add emp
    rescue ArgumentError => e
      puts e.message
      puts 'Введите данные заново!'
      add
    end

  end

  def change
    puts 'Введите номер читателя, данные которого вы хотите изменить.'
    number = STDIN.gets.chomp.to_i
    if (number > list_reader.length) || number.negative?
      puts 'Такого читателя нет!'
      exit 0
    end
    reader = list_reader.get_emp(number)

    puts 'Выберите, какие данные вы хотите изменить (можно список)'
    puts '1. ФИО'
    puts '2. Дата рождения'
    puts '3. Номер телефона'
    puts '4. Адрес'
    puts '5. Email'
    puts '6. Паспорт'
    puts '7. Задолженность'
    array_changes = STDIN.gets.chomp.split.map(&:to_i)
    fields = { 1 => :fullname, 2 => :birthdate, 3 => :mobphone, 4 => :address, 5 => :email, 6 => :passport,
               7 => :debt }
    array_changes.each do |item|
      puts "Изменяется поле под номером #{item} ..."
      print 'Введите новое значение: '
      change = STDIN.gets.chomp
      list_reader.change(reader, fields[item], change)
    end

  end

  def delete
    puts 'Введите номер работника, данные которого вы хотите удалить.'
    number = STDIN.gets.chomp.to_i
    puts 'Такого работника нет!' if (number > list_reader.length) || number.negative?
    reader = list_reader.get_emp(number)
    list_reader.delete(reader)
  end

  def save
    list_reader.write_list
  end

  def close
    exit 0
  end

  def start
    until 1 != 1
      puts "\nМеню".center(20)
      puts '1. Добавление нового пользователя'
      puts '2. Отображение списка пользователей'
      puts '3. Нахождение пользователя по введенной строке'
      puts '4. Изменение конкретного пользователя'
      puts '5. Удаление конкретного пользователя'
      puts '6. Сохранение изменений в файл'
      puts '7. Закрытие программы'
      print 'Введите номер команды: '
      number = STDIN.gets.chomp
      puts ''
      case number
      when '1'
        add
      when '2'
        show
      when '3'
        find
      when '4'
        change
      when '5'
        delete
      when '6'
        save
      when '7'
        close
      end
    end
  end
end

test = TerminalViewListReader.new

test.start

