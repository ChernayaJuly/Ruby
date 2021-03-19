name = ARGV[0]
puts ("Hello, #{name}")

puts "Введи, пожалуйста, команду языка ruby)"
ARGV.pop
com_r= gets.chomp


if com_r.start_with?('puts') then
	puts "#{com_r.delete_prefix('puts \'').delete_suffix('\'')}"
end

puts "Введи команду операционной системы!"

com_os = gets.chomp

puts `#{com_os}`
