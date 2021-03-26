#v-1

	def zz_8
		puts s = "2 17 9 5 4 88 2 1"
		puts s.split.map{ |i| i.to_i }.max
	end


	#z1
	def z_1
		puts s = "dgsdАВГvnjvnjзвйд123"
		puts s.scan(/[А-я]/).size
	end


	#z9 
	def z_9
		puts s = "МАДАМ abba"
		a = s.scan /[a-zа-я]/
		puts a == a.reverse
	end


	#z18
	def z_18
		puts s = "09.03.2005 я гуляля с Машей, а 15.Августа.2007 я была на море"
		puts s.scan(/([0-2]\d|3[0-1]).(0[1-9]|1[0-2]|Января|Февраля|Марта|Апреля|Мая|Июня|Июля|Августа|Сентября|Октября|Ноября|Декабря).(\d{4})/).map{|e| e.join('.')}.join(", ")
	end


	def main
		puts "Какую задачу хотите решить?"
		n = gets.to_i 
		case n
		when 1
			zz_8
		when 2
			z_1
		when 3
			z_9
		when 4
			z_18
		else
			puts "Такой задачи нет!"
		end
	end
main