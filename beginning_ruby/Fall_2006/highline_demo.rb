require 'rubygems'
require 'highline/import'

say "Hello there!"
name = ask("Enter your name ")
age = ask("Enter your age ", Integer)
price = ask("Enter price ",Float)

say "Name is #{name}"
say "Age is #{age}"
say "Price is #{price}"

if agree("do you like ice cream? (yes/no)")
 say "woo hoo!!"	
end

question = "keep going? (y/n)"
while agree(question,true)
 say "going... and "
 say question
end

say "gone"

gets