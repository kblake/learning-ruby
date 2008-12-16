numbers = [10,3,4,22,99,23,53]
puts numbers.empty?  #false

names = []
unless names.empty?
  puts "not going to get here"
  names.delete(10)
  names.delete_at(4)
end

if names[10]
    names.delete_at(10)
else
  #do something else
end

if numbers.include?(10)
    puts "10 exists!!"
end
  
names = nil
puts names.nil?
names = [nil]
puts names.empty?


puts numbers[0]
puts numbers.first
puts numbers[numbers.size - 1]
puts numbers.last
puts numbers[1]
numbers[0] += 1
puts numbers[0]
puts
subset = numbers[0..2]
puts subset
puts
puts numbers[-2]
puts "size is #{numbers.size}"
#numbers[100] = 29
#puts numbers[100]
#puts "size now is #{numbers.size}"
#p numbers
numbers.each do |number|
  print "#{number} "
end
puts
#does not update contents of array
#better if you wanted to temporarily
#do something to the temp
numbers.each do |number|
  number += 1
end

p numbers

#update this way...
numbers.each_index do |index|
  numbers[index] += 1
end

p numbers

numbers.each_with_index do |number, index|
  puts "#{index}: #{number}"
end

puts "--------------------------"
numbers << 240
p numbers
numbers.insert(3,345)
p numbers
numbers.delete_at(3) #deletes object at index
p numbers
numbers << 54
numbers.delete(54) #deletes all occurrences of object
p numbers






















