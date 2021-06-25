require 'date'
require_relative 'validator_read'

class Reader
    include  Validator_read

    attr_accessor :address

    attr_reader :fullname, :birthdate, :mobphone, :email, :passport, :debt

    def fullname=(fullname)
      @fullname = Validator_read.to_valid_fullname fullname
    end

    def birthdate=(birthdate)
      @birthdate = Validator_read.to_valid_birthdate birthdate

    end

    def mobphone=(mobphone)
      @mobphone = Validator_read.to_valid_mobphone mobphone
    end

    def email=(email)
      @email = Validator_read.to_valid_email email
    end

    def passport=(passport)
      @passport = Validator_read.to_valid_passport passport
    end

    def debt=(debt)
      @debt = debt.to_i
    end


    def initialize( fullname, birthdate, mobphone, address, email, passport, debt)
      self.fullname = fullname
      self.birthdate = birthdate
      self.mobphone = mobphone
      self.address = address
      self.email = email
      self.passport = passport
      self.debt = debt

    end

    def data
      [fullname, birthdate, mobphone, address, email, passport, debt]
    end

    def to_s
        "ФИО:#{@fullname}\n" +
        "Дата рождения: #{@birthdate}\n" +
        "Номер телефона: #{@mobphone}\n" +
        "Адрес: #{@address}\n" +
        "E-mail: #{@email}\n" +
        "Паспорт: #{@passport}\n" +
        "Задолженность: #{@debt}\n"
    end
  end

  test = Reader.new(fullname ="Черная Юлия Олеговна", birthdate ="05.08.2000", mobphone ="89182128732",address= "ул.Красная,45", email ="july@gmail.ru", passport = "1316554789", debt =600)
  puts test