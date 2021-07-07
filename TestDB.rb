require 'mysql2'
require_relative 'reader'

class Database
attr_accessor :conn

class Database
@@instance = nil

private_class_method :new

def initialize
  self.conn = db_mysql_con
end

def self.instance
  @@instance ||= new
end

def db_mysql_con
  Mysql2::Client.new(host: '127.0.0.1', username: 'yulia', password: 'Yulia2000', database: 'Stuff')
end

def select_all
res = []
conn.query('SELECT * FROM Reader').each do |r|
  res << Employee.new(r['ReaderID'], r['fullname'], r['birthdate'], r['mobphone'],
                      r['address'], r['email'], r['passport'], r['debt'])
end
res
end

def add_node(data)
  escaped = data.map do |value|
    "'#{conn.escape(value)}'"
  end
  p escaped.join(',')
  conn.query("INSERT INTO Reader (fullname,birthdate,mobphone,address,email,passport,debt) VALUES (#{escaped.join(',')});")
end

def change_node(id, what_change, change)
  conn.query("UPDATE Reader SET #{conn.escape(what_change)} = '#{conn.escape(change)}' WHERE ReaderID = #{id}")
end

def delete_node(id)
  conn.query("DELETE FROM Reader WHERE ReaderID = #{id}")
end

def close
  conn.close

end