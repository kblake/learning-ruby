#require is a ruby keyword/reserved word
#bring in file with functionality I want to use
require 'rubygems'
require "highline/import"

say "Hello world!"
name = "john"
say "Hello #{name}"

#old-school
puts "Please enter your name"
name = gets.chomp
say "Hello #{name}"

#highline
name = ask("Enter your name ")
say "Hello #{name}"

age = ask("Enter age ",Integer)
say "Age is #{age}"

price = ask("Enter price ",Float)
say "Price is #{price}"

#agree looks for yes or y, no or n and then it will do
#equality comparisons for you
if(agree("do you like ice cream? (yes/no)"))
	say "woo hoo!"
end

#puts "do you like ice cream (yes/no or y/n)"
#input = gets.chomp
#if(input == "yes" || input == "y")
# puts "woo hoo!"
#end

while(agree("Keep going? (yes/no)"))
	say "... and going..."
end
say "bye bye"


puts "enter my program? (yes/no)"
continue = gets.chomp
#still need to check for empty
while(continue.downcase == "yes" || continue.downcase == "y")
	puts "... and going ..."
	puts "enter my program? (yes/no)"
	continue = gets.chomp
end
say "bye bye"
















