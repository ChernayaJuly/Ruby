#v-1

#z_10
def find
  s="17 октября 1910 Федор гулял по парку, а 25 сентября 1898 он спал"
  puts s.scan(/([0-2]\d|3[0-1]) (0[1-9]|1[0-2]|января|февраля|марта|апреля|мая|июня|июля|августа|сентября|октября|ноября|декабря) (\d{4})/).map{|e| e.join(' ')}.join(", ")
end


#z1
def z_1
	s = "2.2 1.34 1.11 -11.11"
	puts s.split.each{|i| i.to_f}.max
end



#z9
def z_9
	s = "0.5 7.1 0.3 5 8.3"
	puts s.split(" ").each{|i| i.to_f}.min
end

#z18
def z_18
	s = "sddf123bhbj1234bbjhk12345"
	puts s.split(/\D+/).map{ |x| x.size }.max
end

#find
z_1
z_9
z_18