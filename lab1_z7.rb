#var-1
numb = ARGV[0]
numb = numb.to_i

def prost numb
	if(numb==1)
		return false
	for i in 2..Math.sqrt(numb)
		if(numb%==0)
			return false
		end
	end
end

def sum_prost numb
	s=[]
	s[1]=0
	for k in 2..numb
		s[k]==1
	end
	for k in 2..Math.sqrt(numb)
		if (s[k]==1)
			for j in k*k..N
				s[j]==0
			end
		end
	end
	return s
end


