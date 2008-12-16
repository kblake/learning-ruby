#write to a file
open('demo','w') do |file|
	file.write("hello\nworld\tok")
end

#read from file
open('demo','r') do |file|
	puts file.read
end

#append to a file
open('demo','a') do |file|
	file.write("\nkarmen was here!")
end

#read from file
open('demo','r') do |file|
	puts file.read
end


#write an array
open('array','w') do |file|
	file.write([1,2,3,4].join(", "))
end
open('array','r') do |file|
	p file.read.split(", ")
end