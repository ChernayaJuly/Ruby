class Employees
    def name
     @name
    end

    def name=(name)
        @name = name
    end

    def surname
        @surname
    end

    def surname=(surname)
        @surname = surname
    end

    def patronymic
        @patronymic
    end

    def patronymic=(patronymic)
        @patronymic=patronymic
    end

    def birthday
        @birthday
    end

    def birthday=(birthday)
        @birthday=birthday
    end

    def number
        @number
    end

    def number=(number)
        @number=number
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
        @email=email
    end

    def passport
        @passport
    end

    def passport=(passport)
        @passport=passport
    end

    def profession
        @profession
    end

    def profession=(profession)
        @profession=profession
    end

    def work_experience
        @work_experience
    end

    def work_experience=(work_experience)
        @work_experience=work_experience
    end

    def last_work
        @last_work
    end

    def last_work=(last_work)
        @last_work=last_work
    end

    def post 
        @post
    end

    def post=(post)
        @post=post
    end

    def last_salary
        @last_salary
    end

    def last_salary=(last_salary)
        @last_salary=last_salary
    end

    def init(name,surname,patronymic,birthday,number,address,email,passport,profession,work_experience,last_work,post,last_salary)
        @name=name
        @surname=surname
        @patronymic=patronymic
        @birthday=birthday
        @number=number
        @address=address
        @email=email
        @passport=passport
        @profession=profession
        @work_experience=work_experience
        @last_work=last_work
        @post=post
        @last_salary=last_salary
    end
end

lala=Employees.new("Черная","Юлия","Олеговна","05.08.2000","89182128732","ул.Красная д.145","july@gmail.ru","1316554789","журналист","6","газета Новости","редактор","60000")
p lala