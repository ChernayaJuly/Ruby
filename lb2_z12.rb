#v-1
#z_12
def read 
	s = File.open('file_str.txt'){ |file| file.read}
	puts print (s.split("\n").sort_by{|i| i.split.length}).join("\n")
end
read