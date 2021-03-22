#v-1
puts "введите кол-во эл и числа"
arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 

#z1
def z_1
	arr = read 'file.txt'
	m = arr.max
	max_ind = arr.index(max)
	s = 0
	arr.each do |i| 
		if ((arr.index(i) > max_ind) && arr[i]!=m)
			s +=i
		elsif ((arr.index(i) > max_ind) && arr[i]==m)
			s = 0 
			max_ind = arr.index(i)
		end
		if (m==arr.last)
			puts "Max = last element"
		else
			s
		end	
	end
end
puts z_1

#z13
#z25
#z37
#z49