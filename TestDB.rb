require 'mysql2'
require 'date'
require_relative 'reader'

def db_mysql_con
  client = Mysql2::Client.new(host: '127.0.0.1', username: 'yulia', password: 'Yulia2000', database: 'Stuff')
end

def db_select_log(conn)
  res = []
  conn.query('SELECT * FROM Reader').each do |r|
    res << Reader.new(r["idReader"], r["name"], r["birthdate"].strftime('%d.%m.%Y'), r["mobphone"], r["address"], r["email"], r["passport"], r["debt"])
  end
  res
end

conn_mysql = db_mysql_con
puts db_select_log(conn_mysql)
conn_mysql.close