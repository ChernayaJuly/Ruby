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
# arr=[2 7 3 1 6 9], (a,b) a=2 b=8, answer = 7
def z_25 arr
	puts "Введите а: "
	a = gets.to_i
	puts "Введите b: "
	b = gets.to_i
	arr1 = []
	for i in 0..(arr.length)-1
		if (arr[i]>a && arr[i]<b)
			arr1.push(arr[i])
		end
	end
	puts arr1.max
end

#z37
def z_37 arr
	arr1=[]
	k = 0
	for i in 1..(arr.length)-1
		if arr[i]<arr[i-1]
			arr1.push(i)
			k+=1
		end
	end
	puts "indexes:" 
	puts print arr1
	puts "kolvo = ", k
end

#z49
puts "введите кол-во эл и числа"
arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 
#puts z_1 arr
#z_13 arr
#z_25 arr
z_37 arr
