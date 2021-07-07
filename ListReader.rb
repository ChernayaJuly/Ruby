require_relative 'reader'
require 'yaml'
require 'json'


  attr_accessor :reader_list

  def initialize(conn)
    self.reader_list = []
    read_list_DB(conn)
  end

  def read_list(path)
    data = IO.read(path).split("\n\n")
    data.each do |emp|
      fields = emp.split("\n")
      reader = Reader.new(*fields)
      add reader
    end
  end

def read_list_DB(conn)
    conn.query('SELECT * FROM Reader').each do |r|
      reader_list << Reader.new(r["idReader"], r["name"], r["birthdate"].strftime('%d.%m.%Y'), r["mobphone"], r["address"], r["email"], r["passport"], r["debt"])
    end

    def read_list_DB
      Database.get_instance.select_all
    end

  def add(reader)
    reader_list.push(reader)
  end

    def add_to_DB(conn, data)
      escaped = data.map do |value|
        conn.escape(value).to_s
      end
      conn.query("INSERT INTO Reader VALUES (#{escaped.join(",")})")
    end

    def change_node(conn, id, what_change, change)
      node = conn.query("SELECT * FROM Reader WHERE Reader.id = #{id}")
      employee = Reader.new(r["idReader"], r["name"], r["birthdate"].strftime('%d.%m.%Y'), r["mobphone"], r["address"], r["email"], r["passport"], r["debt"])

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

    def write_list_YAML
      File.open('data.yaml', 'w') { |fl| fl.write YAML.dump(reader_list) }
    end

    def read_list_YAML
      file = YAML.load_file('data.yaml')
      @reader_list = file
    end



    def write_list_JSON
      File.open('data.json', 'w') { |fl| fl.write JSON.dump(reader_list) }
    end

    def read_list_JSON
      file = YAML.load_file('data.json')
      @reader_list = file
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

