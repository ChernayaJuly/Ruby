class Employee
  def name
    @name
  end

  def name=(name)
    @name=name
  end

  def surname
    @surname
  end

  def surname=(surname)
    @surname=surname
  end


  def midname
    @midname
  end

  def midname=(midname)
    @midname=midname
  end


  def birthdate
    @birthdate
  end

  def birtdate=(birthdate)
    @birthdate=birthdate
  end


  def mobphone
    @mobphone
  end

  def mobphone=(mobphone)
    @mobphone = self.class.is_valid_mobphone mobphone
  end


  def address
    @address
  end

  def address=(address)
    @address=address
  end


  def email
    @email
  end

  def email=(email)
    @email= self.class.is_valid_email email
  end

  def passport
    @passport
  end

  def passport=(passport)
    @passport = passport
  end

  def specialization
    @specialization
  end

  def specialization=(specialization)
    @specialization=specialization
  end

  def workexp
    @workexp
  end

  def workexp=(workexp)
    @workexp=workexp
  end

  def prevnamework
    @prevnamework
  end

  def prevnamework=(prevnamework)
    @prevnamework= @workexp == 0 ? "NA" : prevnamework
  end

  def post
    @post
  end

  def post=(post)
    @post= @workexp == 0 ? "NA" : post
  end

  def prevsalary
    @prevsalary
  end

  def prevsalary=(prevsalary)
    @prevsalary= @workexp == 0 ? 0 : prevsalary
  end



  def initialize(name,surname,midname,birthdate,mobphone,address,email,passport,specialization,workexp=0,prevnamework="",post="",prevsalary=0)
    @name = name
    @surname = surname
    @midname = midname
    @birthdate = birthdate
    self.mobphone = mobphone
    @address = address
    self.email = email
    @passport = passport
    @specialization = specialization
    @workexp = workexp
    self.prevnamework = prevnamework
    self.post = post
    self.prevsalary = prevsalary
  end

  def self.is_russian_mobphone? mobphone
    mobphone.start_with?("+7","8")
  end

  def self.is_valid_mobphone mobphone
    raise StandardError, "Это не российский номер" unless self.is_russian_mobphone? mobphone

    if mobphone.start_with?("+7")
      mobphone.insert(2,'-')
      mobphone.insert(6,'-')
    else
      mobphone.insert(1,'-')
      mobphone.insert(5,'-')
    end
    return mobphone
  end

  def self.is_email? email
    (/\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/ =~ email ) != nil
  end

  def self.is_valid_email email
    raise StandardError, "Неправильный email" unless self.is_email? email
    return email.downcase
  end

  def to_s
      "Это анкета работника:\n" +
      "Фамилия: #{@name}\n" +
      "Имя: #{@surname}\n" +
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

class TestEmployee < Employee

  def to_s
    "Это анкета  ТЕСТОГО работника:\n" +
      "Фамилия: #{@name}\n" +
      "Имя: #{@surname}\n" +
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
      "Предыдущая зарплата: #{@prevsalary}\n\n"
  end
end

test = Employee.new("Черная", "Юлия", "Олеговна", "05.08.2000", "89182128732", "ул.Красная,.145", "july@gmail.ru", "1316554789", "журналист", 6, "газетаНовости", "редактор", 60000)
puts test
test2 = TestEmployee.new("Иванов","Иван","Иванович","13.02.1994","19321132213","ул. Пыльная, д. невидный","ivan@mail.ru","032125312","Инженер",5,"Газпром","Главный инженер",200000)
puts test2


