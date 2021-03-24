#v-1
puts "введите кол-во эл и числа"
arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 

#z1
def max_el arr
	return arr.max
end

 def m_i arr 
 	m = arr.max
 	max_ind = arr.index(m)
 	return max_ind
 end

def z_1 arr
	m = max_el arr
	max_ind = m_i arr
	s = 0
	for i in 0...arr.size
    	if(i>max_ind)
      		s+=1
		end
	end
		if (m==arr.last)
			puts "Max = last element"
		else
		s
		end
end
puts z_1 arr

#z13
#z25
#z37
#z49