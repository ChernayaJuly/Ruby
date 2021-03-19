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

