	#v-1

	#z1
	def z_1 arr
	max_ind = arr.index(arr.max)
		if (arr.max==arr.last)
			puts "Max = last element"
		else
			puts arr.reverse.index(arr.max)
		end
	end


	#z13
	def z_13 arr
		min_ind = arr.index(arr.min)
		if (arr.min==arr.first)
			puts "Min = first element"
		else
			(0..min_ind-1).each do |i|
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
		arr.each do |i|
			if i>a && i<b
				arr1.push(i)
			end
		end
		puts arr1.max
	end

	#z37
	def z_37 arr
		arr1=[]
		k = 0
		k = arr.select {|i| arr.index(i).to_s<arr.index(i-1).to_s}.length
		(1..(arr.length)-1).each do |i|
			if arr[i]<arr[i-1]
				arr1.push(i)
			end
		end
		puts "indexes:" 
		puts print arr1
		puts "kolvo = ", k
	end

	#z49
	def prost numb
		(2..Math.sqrt(numb)).each do |i|
			if(numb%i==0)
				return false
			end
		end
		return true
	end

	def z_49 arr
		arr1 = []
		(0..(arr.length)-1).each do |i|
			(2..arr[i]/2).each do |j|
				if arr[i]%j==0 && (prost(j)==true)
					arr1.push(j)
				end
			end
		end
		puts print arr1.uniq	
	end


	def main 
		puts "Какую задачу хотите решить?"
		n = gets.to_i 
		puts "введите кол-во эл и числа"
		arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 
		case n
		when 1
			z_1 arr
		when 2
			z_13 arr
		when 3
			z_25 arr
		when 4
			z_37 arr
		when 5
			z_49 arr
		else
			puts "Такой задачи нет!"
		end
	end
main