#var-1
numb = ARGV[0]
numb = numb.to_i

def sum_dig numb
	sum=0
	while numb > 0
		last_dig = numb%10
    	sum+= last_dig
    	numb/=10
    end
    sum
end
puts sum_dig numb

def pr_dig numb
  pr=1
  while numb > 0
    last_dig = numb%10
      pr*= last_dig
      numb/=10
    end
    pr
end
puts pr_dig numb

def max_dig numb
  max = numb%10
  numb/=10
  while numb > 0
    if((numb%10)>max)
      max=numb%10
    end
    numb/=10
  end
  max
end
puts max_dig numb

def min_dig numb
  min = numb%10
  numb/=10
  while numb > 0
    if((numb%10)<min)
      min=numb%10
    end
    numb/=10
  end
  min
end
puts min_dig numb

#method1
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


#method2
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


#method3
def pr_3 numb
	pr=1
	for i in 2..numb/2
		if (numb%i==0 && (sum_dig i)<(sum_dig numb))
			pr*=i
		end
	end
	pr
end
puts pr_3 numb
