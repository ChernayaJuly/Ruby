puts "введите кол-во эл и числа"
arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 

def sum arr
arr.inject { |s, i| s+=i } 
end
puts sum arr

def pr arr
arr.inject {|s,i| s *=i}
end
puts pr arr

def min_el arr
	 return arr.min
end
puts min_el arr

def max_el arr
	return arr.max
end
puts max_el arr
