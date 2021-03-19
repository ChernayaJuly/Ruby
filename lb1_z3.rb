name = ARGV[0]
puts ("Hello, #{name}")

puts "Какой твой любимый язык программирования?"
ARGV.pop
lang = gets.chomp

unless lang=="ruby" then
	puts "Скоро будет ruby!, а не твой #{lang}"
else
	puts "Ты подлиза!"
end