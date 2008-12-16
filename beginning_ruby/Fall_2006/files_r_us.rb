 require 'watir'   # the watir controller

#write to a file
open('warehouse','w') do |file|
	file.write("hello doug\n")
	file.write("hello sean\tblah")
end

open('warehouse.html','w') do |file|
	file.write("<html><head><title>hola</title></head><body>")
	file.write("<b>hello jon</b><br/>")
	file.write("blah")
	file.write("</body></html>")
end

# open the IE browser
ie = Watir::IE.new
ie.goto("warehouse.html")

#reading from a file
open('warehouse','r') do |file|
	puts file.read
end

open('warehouse.html','r') do |file|
	puts file.read
end

#write an array to file
#first, convert array to string
numbers = [3,5,3,5,9]
open('num_file','w') do |file|
	file.write(numbers.join(" - "))
end

open('num_file','r') do |file|
	numbers_string = file.read
	puts numbers_string
	numbers = numbers_string.split(" - ")
	p numbers
end





















