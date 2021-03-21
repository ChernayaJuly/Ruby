#var-1
numb = ARGV[0]
numb = numb.to_i

def prost numb
	for i in 2..Math.sqrt(numb)
		if(numb%i==0)
			return false
		end
	end
	return true
end

def sum_prost_1 numb
	sum=0
	for k in 2..numb/2
		if(numb%k==0 && prost(k)==true)
			sum+=k
		end
	end
	sum
end

puts sum_prost_1 numb

def kolvo_2 numb
	k=0
	while numb > 0
		last_dig = numb%10
		if (last_dig%2!=0 && last_dig>3)
			k+=1
			numb/=10
		end
		numb/=10
	end
	k
end

puts kolvo_2 numb


