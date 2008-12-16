MINOR = 21
puts "Enter your age: "
age = gets.chomp.to_i
puts "You entered #{age}"
if age < MINOR
  puts "Youth is a wonderful thing.  Enjoy"
end
puts "Age is a state of mind."