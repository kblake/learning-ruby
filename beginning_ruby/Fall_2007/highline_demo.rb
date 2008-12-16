require 'rubygems'
require 'highline/import'

say "Hello World!"
name = "joe"
say "Hello #{name}"

name = ask("Enter your name") #prompt and gets.chomp
say name

age = ask("Enter your age",Integer) #prompt, gets.to_i, validation
say age.to_s #to_s required for output
say "Age is #{age}"

price = ask("Enter your consulting rate",Float)
say price.to_s

if agree("do you like ice cream? (yes/no)")
  say "woo hoo!"
else
  say "ugh!!"
end

while agree("do you wish to continue?")
  say "... keep going ..."
end

company = ask("Company?  ") { |q| q.default = "No company provided" }
say company

age = ask("Age?  ", Integer) { |q| q.in = 0..105 }
say age.to_s

password = ask("Enter your password:  ") { |q| q.echo = false }
say password
password = ask("Enter your password:  ") { |q| q.echo = "*" }
say password




























