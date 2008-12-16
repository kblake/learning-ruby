age = 15
if age > 15
	puts "get a license"
end

#if !(age > 15)
unless age > 15
	puts "ride a bike"
else
	puts "get a license"
end

puts "enter score"
score = gets.to_i
grade = case score
  when 90..100: "A"
  when 80..89: "B"
  when 70..79: "C"
  when 60..69: "D"
  else "Uh oh!"
end
puts grade

#ternary operator
#short cut for simple if-else
puts "enter a number.  odd/even?"
number = gets.to_i
puts (number%2==0) ? "even" : "odd"















  

