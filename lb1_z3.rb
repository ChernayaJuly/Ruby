name = ARGV[0]
puts ("Hello, #{name}")

puts "Какой твой любимый язык программирования?"
ARGV.pop
lang = gets.chomp

case 
	when lang =="Python" 
		puts "Одобряю!" 
	when lang=="C#" 
		puts "Скоро будет ruby!, а не твой #{lang}"
	when lang=="ruby" 
		puts "Ты подлиза!"
end