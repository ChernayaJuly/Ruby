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
def z_13 arr
	m = arr.min
	min_ind = arr.index(m)
	if (m==arr.first)
		puts "Min = first element"
	else
		for i in 0..min_ind-1
		arr.push(arr.shift)
		end
	end
	puts print arr
end


#z25
#z37
#z49
puts "введите кол-во эл и числа"
arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 
#puts z_1 arr
z_13 arr
