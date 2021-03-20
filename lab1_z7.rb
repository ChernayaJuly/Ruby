#var-1
numb = ARGV[0]
numb = numb.to_i

def prost numb
	for i in 2..Math.sqrt(numb)
		if(numb%i==0)
			return false
		else
			return true
		end
	end
end

def sum_prost numb
	sum=0
	for k in 2..numb/2
		if(numb%k==0 && prost(k)==true)
			sum+=k
		end
	end
	sum
end

puts sum_prost numb

