require "my_classes"

die1 = Die.new
die2 = Die.new

die1.roll
die2.roll
puts "Die one: #{die1.to_s}, Die two: #{die2.to_s}"

die1.roll
die2.face_value = 4
puts "Die one: #{die1.to_s}, Die two: #{die2.to_s}"

sum = die1.face_value + die2.face_value
puts "Sum: #{sum}"

sum = die1.roll + die2.roll
puts "Die one: #{die1.to_s}, Die two: #{die2.to_s}"
puts "New sum: #{sum}"
