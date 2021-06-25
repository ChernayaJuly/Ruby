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

  def self.is_russian_mobphone? (mobphone)
    mobphone.start_with?("+7","8")
  end

  def self.is_valid_mobphone (mobphone)
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



test = Employee.new(name="Черная",surname ="Юлия", midname ="Олеговна", birthdate ="05.08.2000", mobphone ="89182128732",address= "ул.Красная,.145", email ="july@gmail.ru", passport = "1316554789", specialization ="журналист", workexp=6, prevnamework ="газетаНовости", post ="редактор", prevsalary =60000)
puts test
test2 = Employee.new(name="Иванов",surname ="Иван",midname ="Иванович",birthdate ="13.02.1994",mobphone ="19321132213",address="ул. Пыльная, д. невидный",email="ivan@mail.ru",passport = "032125312",specialization ="Инженер",workexp=5,prevnamework ="Газпром",post ="Главный инженер",prevsalary =200000)
puts test2


