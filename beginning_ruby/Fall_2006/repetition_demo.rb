#infinite loop
# don't try this at home kids
#~ loop do
 #~ print "ah ah ah!"	
#~ end

n = 1
loop do
  print n.to_s + " "
  n = n + 1
  break if n > 10
end
puts 

n = 1
while n < 11
  print n, " "
  n+=1
end
puts

n = 1
begin
 print n, " "
 n+=1
end while n < 11
puts

n = 1
until n > 10
  print n," "
  n+=1
end
puts

for n in 1..10
  print n, " "
end
puts

n = 1
10.times do
 print n," "
 n+=1
end
puts

#iterator
(1..10).each do |n|
  n*=10
  print n, " "
end
puts

#iterator shorthand
(1..10).each {|n| print n, " "}
puts

for letter in 'a'..'z'
 print letter, " "
end
puts

for letter in 'A'..'Z'
  print letter, " "
end
puts

#accumulate and count
count = 0
sum = 0
loop do
 print "Enter a number, -99 to exit: "
 input = gets.to_i
 break if input == -99
 sum += input
 count += 1
end
puts "You entered #{count} numbers and the sum is #{sum}"









gets