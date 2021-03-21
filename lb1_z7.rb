#var-1


def sum_dig numb
	sum=0
	while numb > 0
		last_dig = numb%10
    	sum+= last_dig
    	numb/=10
    end
    sum
end


def pr_dig numb
  pr=1
  while numb > 0
    last_dig = numb%10
      pr*= last_dig
      numb/=10
    end
    pr
end


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

#c = ARGV[0]
#c = gets.to_i

#numb = ARGV[1]
#numb = gets.to_i


def main 
	if ARGV.length <2
		puts "Hello, World!"
	else
		case ARGV[0]
			when '1'
				puts sum_dig ARGV[1].to_i
			when '2'
				puts pr_dig ARGV[1].to_i
			when '3'
				puts max_dig ARGV[1].to_i
			when '4'
				puts min_dig ARGV[1].to_i
			when '5'
				puts sum_prost_1 ARGV[1].to_i
			when '6'
				puts kolvo_2 ARGV[1].to_i
			when '7'
				puts pr_3 ARGV[1].to_i
		end
	end
end

main







