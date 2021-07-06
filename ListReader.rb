require_relative 'reader'

  attr_accessor :reader_list

  def initialize(path)
    self.reader_list = []
    read_list path
  end

  def read_list(path)
    data = IO.read(path).split("\n\n")
    data.each do |emp|
      fields = emp.split("\n")
      reader = Reader.new(*fields)
      add reader
    end

  end

  def add(reader)
    reader_list.push(reader)
  end

  def change(reader, what_change, change)
    reader.send("#{what_change}=", change)
  end

  def delete(reader)
    reader_list.delete(reader)
  end

  def write_list
    str = ''
    File.open('data.txt', 'w') do |file|
      reader_list.each do |reader|
        str += reader.to_s
      end
      file.write str.chomp.chomp
    end
  end

  def show
    data = ''
    ind = 1
    reader_list.each do |emp|
      data += "Работник №#{ind}\n" \
              "ФИО: #{emp.fullname}\n" \
              "Дата рождения: #{emp.birthdate}\n" \
              "Номер телефона: #{emp.mobphone}\n" \
              "Адрес: #{emp.address}\n" \
              "E-mail: #{emp.email}\n" \
              "Паспорт: #{emp.passport}\n" \
              "Задолженность: #{emp.debt}\n" \
      ind += 1
    end
    data
  end


  def length
    reader_list.length
  end

  def get_emp(number)
    reader_list[number - 1]
  end

  def each(&block)
    @reader_list.each(&block)
  end

end
