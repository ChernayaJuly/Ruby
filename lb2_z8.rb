#v-1

def zz_8 s
	puts s.split.map{ |i| i.to_i }.max
end


#z1
def z_1 s
	puts s.scan(/[А-я]/).size
end


#z9 s = "МАДАМ abba"
def z_9 s
	a = s.scan /[a-zа-я]/
	puts a == a.reverse
end


#z18
















s = "МАДАМ abba"
#zz_8 s
#z_1 s
z_9 s
