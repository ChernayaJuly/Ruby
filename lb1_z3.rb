name = ARGV[0]
puts ("Hello, #{name}")

puts "Какой твой любимый язык программирования?"
ARGV.pop
lang = gets.chomp

case lang
	when "Python" 
		puts "Одобряю!" 
	when "C#" 
		puts "Скоро будет ruby!, а не твой #{lang}"
	when "ruby" 
		puts "Ты подлиза!"
end