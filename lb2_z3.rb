=begin
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




def read 
	arr = File.open('file.txt'){ |file| file.read.split }
	return arr.each {|i| i.to_i}
end
 puts read
=end


def choice n,w
  case n
  when 1
    puts "введите кол-во эл и числа"
	arr=Array.new( ( gets.to_i ) ){ |i| gets.to_i } 
    puts arr
  when 2
    arr = File.open(w){ |file| file.read.split }
	arr.each {|i| i.to_i}
    print puts arr
  end
end
choice 1,'file.txt'


			
			
