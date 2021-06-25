module Validator
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

  def self.is_fullname? fullname
    (/[а-яА-я]*(\s?[-]\s?[а-яА-Я]*)?\s[а-яА-я]*(\s?[-]\s?[а-яА-Я]*)?\s[А-Я][а-я]*(\s[а-яА-Я]*)?$/ =~ fullname.rstrip.lstrip) != nil && fullname[/[0-9a-zA-Z]/] == nil
  end

  def self.is_valid_fullname fullname
    raise StandardError, "Неправильное ФИО" unless self.is_fullname? fullname
    name = fullname.lstrip.rstrip[/[а-яА-я]*(\s?[-]\s?[а-яА-Я]*)?\s[а-яА-я]*(\s?[-]\s?[а-яА-Я]*)?\s[А-Я][а-я]*(\s[а-яА-Я]*)?$/].gsub(/\s[-]\s/,'-').split
    name.map! {|e| e[/[-]/]==nil ? e.capitalize: e.split('-').map!{|k| k.capitalize}.join('-') }
    if name.length == 4
      name[-1].downcase!
    end

    def self.is_birthdate? birthdate
      (/([0-2]\d|3[0-1]|\d).(0[1-9]|1[0-2]).(\d{2}|\d{4})/ =~ birthdate) != nil
    end

    def self.is_valid_birthdate birthdate
      raise StandardError, "Неправильный формат даты" unless self.is_birthdate? birthdate
      unless birthdate[/.\d{4}/] == nil
        return DateTime.strptime(birthdate,'%d.%m.%Y').strftime('%d.%m.%Y')
      end
      return DateTime.strptime(birthdate,'%d.%m.%y').strftime('%d.%m.%Y')
    end
end