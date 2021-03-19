numb = ARGV[0]
numb = numb.to_i

def last_digit(x,q=10)
  x % q
end

def digits_sum(x,q=10)
  sum = 0
  while x > 0
    sum+= last_digit(x,q)
    x /= q
  end
  sum
end

puts digits_sum(numb)