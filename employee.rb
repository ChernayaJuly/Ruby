require 'date'
require_relative 'validator'

class Employee
  include  Validator

  attr_accessor :address, :specialization, :post

  attr_reader :fullname, :birthdate, :mobphone, :email, :passport, :workexp, :prevnamework, :prevsalary

  def fullname=(fullname)
  @fullname = Validator.to_valid_fullname fullname
end

def birthdate=(birthdate)
  @birthdate = Validator.to_valid_birthdate birthdate

end

def mobphone=(mobphone)
  @mobphone = Validator.to_valid_mobphone mobphone
end

def email=(email)
  @email = Validator.to_valid_email email
end

def passport=(passport)
  @passport = Validator.to_valid_passport passport
end

def workexp=(workexp)
  @workexp = workexp.to_i.negative? ? 0 : workexp.to_i
end

def prevnamework=(prevnamework)
  @prevnamework = @workexp.zero? ? 'NA' : prevnamework
end

def prevsalary=(prevsalary)
  @prevsalary = @workexp.to_i.zero? ? 0 : prevsalary.to_i
end



def initialize( fullname, birthdate, mobphone, address, email, passport, specialization, workexp = 0, prevnamework = '', post_id = nil, prevsalary = 0)
  self.fullname = fullname
  self.birthdate = birthdate
  self.mobphone = mobphone
  self.address = address
  self.email = email
  self.passport = passport
  self.specialization = specialization
  self.workexp = workexp
  self.prevnamework = prevnamework
  self.post = post_id
  self.prevsalary = prevsalary
end

def data
  post_name = post.nil? ? 'NULL' : post.post_name
  [fullname, birthdate, mobphone, address, email, passport, specialization, workexp, prevnamework, post_name, prevsalary]
end

def to_s
  "ФИО:#{@fullname}\n" +
    "Отчество: #{@midname}\n" +
    "Дата рождения: #{@birthdate}\n" +
    "Номер телефона: #{@mobphone}\n" +
    "Адрес: #{@address}\n" +
    "E-mail: #{@email}\n" +
    "Паспорт: #{@passport}\n" +
    "Специальность: #{@specialization}\n" +
    "Стаж работы: #{@workexp}\n" +
    "Предыдущее место работы: #{@prevnamework}\n" +
    "Должность: #{@post}\n" +
    "Предыдущая зарплата: #{@prevsalary}\n"
end
end

test = Employee.new(fullname ="Черная Юлия Олеговна", birthdate ="05.08.2000", mobphone ="89182128732",address= "ул.Красная,.145", email ="july@gmail.ru", passport = "1316554789", specialization ="журналист", workexp=6, prevnamework ="газетаНовости", post ="редактор", prevsalary =60000)
puts test
