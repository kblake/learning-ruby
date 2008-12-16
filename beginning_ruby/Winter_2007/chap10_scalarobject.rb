#String Review
puts "hello"
puts 'hello'
puts "2 + 2 = #{4}"
#Escape sequences
puts "\"hello\" there!"
puts "Karmen\'s class"

#combining strings
some_string = "a" + "b" + "c"
puts some_string
some_string = some_string + "d"
puts some_string
some_string << "e"
puts some_string
puts "Here is a string #{some_string}"

#massaging strings (return is a copy)
name = "John"
puts name.upcase
puts name
puts name.downcase
puts name
puts name.reverse
puts name
puts

#massaging strings using the bang version(change location in memory)
name.upcase!
puts name
name.downcase!
puts name
name.reverse!
puts name
puts

#characters and substrings
message = "hello world!"
puts message[2]
puts message[2].chr
puts message[1..4]
puts message[1...4]
puts message[1,4]
puts message[1,7]
puts message[2,3]

##########################################################################
puts
# Numbers Review
puts 1 + 1
puts 10/5 #integer division
puts 10.0/3
puts 1.2 + 3.1
puts -2 - 5
puts 10%3

#########################################################################
# Times and Dates

time = Time.new
puts time
puts time.year
puts time.month
puts time.day
puts time.hour
puts time.min
puts time.sec

#time formatting for printing
puts time.strftime("Formatted date is: %m-%d-%Y") #page 274-275 for more



