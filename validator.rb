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
end