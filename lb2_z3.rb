def vv kol 
	puts "Введите числа: "
	arr=Array.new(kol){ |i| gets.to_i } 
	#1
	arr.push(99)
    puts print arr
    #2
    arr << 88
    puts print arr
    #3 добавление в начало
    arr.unshift(77)
    puts print arr
    #4
    arr[3]=66
    puts print arr
    #5
    arr.insert(4,55)
    puts print arr
end
vv 5

