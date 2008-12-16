puts "hello world!!"
puts "Enter your name"
name = gets.chomp
puts "Your name is #{name}"

#puts "Hello CIS 282!!!!"
#puts "Enter your name"
#name = gets.chomp
#puts "Hello #{name}"
#puts "Enter age"
#age = gets.to_i
#puts "Your age is #{age}"
#if age >= 16
#  puts "you can drive with a license"
#else
#  puts "ride your bike, kid!"
#end
puts "Enter positive number, I'll print 1 to that number"
num = gets.to_i
count = 1
while count <= num
  print "#{count} "
  count += 1
end
puts 
1.upto(num) {|count| print "#{count} "}
puts
num.downto(1){|count| print "#{count} "}
puts
#alternate syntax
1.upto(num) do |count|
  print "#{count} "
end
puts
5.times {puts "hello cis 282 "}
