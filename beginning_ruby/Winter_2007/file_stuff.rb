#read from file
#assume files are in the same folder
IO.foreach("read_from_file.txt"){|line| p line}
puts
IO.foreach("read_from_file.txt"){|line| puts line}
IO.foreach("read_from_file.txt")do |line|
	puts
	line.chomp!
	puts line
	puts line.length
	puts line.reverse
	puts line.upcase
	puts line[0..2]
	puts
end
puts
#write to the file
#open read_from_file.txt for writing (w)
open("read_from_file.txt","w") do |file| 
	output = "Hello from my program\nHello from the 2nd line."
	output << "\nHello from the third line"
	file.write(output)
end

#write to a file, if it does not exist
#your program will create the file for you
open("output_file.txt","w") do |file| 
	output = "Hello from my program\nHello from the 2nd line."
	output << "\nHello from the third line"
	file.write(output)
end

IO.foreach("read_from_file.txt"){|line| p line}
puts
IO.foreach("read_from_file.txt"){|line| puts line}

gets









