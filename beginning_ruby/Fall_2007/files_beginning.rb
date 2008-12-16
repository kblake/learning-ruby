#write to a file
open("out_file.txt","w") do |file|
  file.write("hello from line1\nhello from line 2\nhello\tjohn doe")
end

#read from a file
open("out_file.txt","r") do |file|
  puts file.read
end

#appending to file
open("out_file.txt","a") do |file|
  file.write("\nappended line at the end")
end

#write array
numbers = [3,4,2,6,5,2,6]
open("numbers.txt","w") do |file|
  file.write(numbers.join(","))
end

#read array from a file
new_numbers = []
open("numbers.txt","r") do |file|
  new_numbers = file.read.split(",")
  p new_numbers
end

new_numbers.collect! { |number| number.to_i }
p new_numbers

#read file, one line at a time
IO.foreach("products.txt") {|line| puts line << "\n"}

IO.foreach("products.txt") do|line| 
  line_array = line.split(" ")
  p line_array
  puts  line_array[0] << " " << line_array[1] << " " << line_array[2]
end









