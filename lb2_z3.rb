def vv kol 
	puts "Введите числа: "
	arr=Array.new(kol){ |i| gets.to_i } 
	#1
	arr.push(99)
    print arr
    #2
    arr << 88
    print arr

end
vv 5

