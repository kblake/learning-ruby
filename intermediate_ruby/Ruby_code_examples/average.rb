sum=0
count = 0
puts "Enter an integer (0 to quit): "
value = gets.chomp.to_i
while value != 0
  count+=1
  sum += value
  puts "The sum so far is #{sum}"
  puts "Enter an integer (0 to quit): "
  value = gets.chomp.to_i
end
if count == 0
  puts "No values were entered."
else
  average = sum/count
  puts "The average is #{average}"
end