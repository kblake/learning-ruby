$stdout.sync = true
#boolean logic
# common relational operators
# <, >, <=, >=, ==, !=
# logical operators
# && (and), || (or), ! (not)
# truth table: (t is true, f is false)
# t and t is t, t and f is f, f and t is f, f and f is f
# t or t is t, t or f is t, f or t is t, f or f is f
# All values and variables have a boolean value of true except a nil object and fals
x = nil
y = false
if x or y
        puts 'they have values'
else
        puts 'false values'
end

x = 11

#short hand notation, not as readable
if x > 10 then puts x end
if x > 10; puts x; end
if x > 10: puts x; end

#more readable, recommended (required by me)
if x > 10
        puts x
end

#conditional modifier
puts x if x > 10

print "Enter an integer "
x = gets.to_i
if x > 0
        puts "positive"
elsif x < 0
        puts "negative"
else
        puts "zero"
end

lucky_number = 35
print "Guess lucky number: "
num = gets.to_i
if !(num == lucky_number)
        puts "sorry, wrong guess"
end

if !(num == lucky_number)
           puts "sorry, wrong guess"
else
           puts "you got it!"
end

#alternate more readable example
# unless is the same as if not
unless num == lucky_number
        puts "sorry, wrong guess"
end

unless num == lucky_number
        puts "sorry, wrong guess"
else
        puts "you got it!"
end

#case expression



