require 'mysql2'
require_relative 'reader'

class Database
attr_accessor :conn

def initialize
  self.conn = db_mysql_con
end

def db_mysql_con
  Mysql2::Client.new(host: '127.0.0.1', username: 'yulia', password: 'Yulia2000', database: 'Stuff')
end

def test_select
  res = []
  conn.query('SELECT * FROM Reader').each do |r|
    res << Reader.new(r["idReader"], r["name"], r["birthdate"].strftime('%d.%m.%Y'), r["mobphone"], r["address"], r["email"], r["passport"], r["debt"])
  end
  res
end

def close
  conn.close
end

end