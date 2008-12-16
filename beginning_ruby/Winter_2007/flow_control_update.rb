x = 25
if x > 20
  puts "x is greater than 20"
end

puts "x is greater than 20" if x > 20
puts "x is > 30" if x > 30

lucky_number = 17
puts "Guess the lucky number"
num = gets.to_i
if !(num == lucky_number)
  puts "you did not get it"
else
  puts "you got it!"
end

#alternate way to do if not
unless (num == lucky_number)
  puts "you did not get it"
else
  puts "you got it!"
end

puts "you did not get it" unless(num == lucky_number)

####################################
#iteration stuff

square = 2 #initialize here
while(square < 1000) #condition
  square = square*square #update the loop control variable here
end
puts square

square = square*square while square < 1000
puts square

#while not
n = 1
until n > 10
  print n," "
  n+=1  #n = n + 1
end
puts

n = 1
n +=1 until n > 10
puts n

#iterators
3.times {print "ho "}
puts
3.times do
  print "ho"
  print "! "
end
puts
puts "ho! "*3


puts "enter start number"
start = gets.to_i
puts "enter end number"
end_num = gets.to_i
start.upto(end_num) do |temp_num|
  print temp_num," "
end

puts
1.step(12,3) {|num| print num," "}


gets











