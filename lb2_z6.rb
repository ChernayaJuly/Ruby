#v-1

#z1
def z_1 arr
	m = arr.max
	max_ind = arr.index(m)
	k = 0
	for i in (max_ind+1)..(arr.length)-1
		k+=1
	end
	if (m==arr.last)
		puts "Max = last element"
	else
		k
	end
end


#z13
#z25
#z37
#z49
puts "введите кол-во эл и числа"
arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 
puts z_1 arr
