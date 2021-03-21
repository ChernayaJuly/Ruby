puts "введите кол-во эл и числа"
arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 

def sum arr
s = 0
arr.each {|i| s +=i}
return s
end
puts sum arr

def pr arr
s = 1
arr.each {|i| s *=i}
return s
end
puts pr arr

def min_el arr
	min=1000
	for i in 0...arr.size
		if (arr[i] < min)
		min=arr[i]
		end
	end
	min
end
puts min_el arr

def max_el arr
	max=-1000
	for i in 0...arr.size
		if (arr[i] >max)
		max=arr[i]
		end
	end
	max
end
puts max_el arr
