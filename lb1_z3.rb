name = ARGV[0]
puts ("Hello, #{name}")

puts "Какой твой любимый язык программирования?"
ARGV.pop
lang = gets.chomp

if lang=="ruby" then
puts "Ты подлиза!"
elsif lang=="C#" then
puts "Одобряю!"
elsif lang =="Python" then
puts "Скоро будет ruby!, а не твой #{lang}"
end