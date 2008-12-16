$stdout.sync = true

#~ x = nil
#~ y = false
#~ if x or y
 #~ puts "you exist"
#~ else
 #~ puts "false value"
#~ end

#~ x = 11
#~ if x
  #~ puts "you exist"
#~ end

#~ #alternate syntaxes for if, I do not recommend these
#~ # not as readable
#~ if x > 10 then puts x end
#~ if x > 10; puts x; end
#~ if x > 10: puts x; end

#~ #readable
#~ if x > 10
  #~ puts x
#~ end

#~ #conditional modifier
#~ puts x if x > 10

#~ print "Enter an integer: "
#~ x = gets.to_i
#~ if x > 0
  #~ puts "positive"
#~ elsif x < 0
  #~ puts "negative"
#~ else
  #~ puts "zero"
#~ end

#~ lucky_number = 35
#~ print "Guess the lucky number: "
#~ num = gets.to_i
#~ if !(num == lucky_number)
  #~ puts "sorry, wrong guess"
#~ else
  #~ puts "you got it!"
#~ end

#~ #unless is the same as if not
#~ unless num == lucky_number
  #~ puts "sorry, wrong guess"
#~ else
 #~ puts "you got it!"
#~ end

#case structure
#equality comparison with a value
#~ print "Enter test score: "
#~ score = gets.to_i
#~ case score
 #~ when 90: puts "A"
 #~ when 80: puts "B"
 #~ when 70: puts "C"
 #~ else
   #~ puts "something below C"
#~ end

print "Enter test score: "
score = gets.to_i
case score
 when 90..100: puts "A"
 when 80..89: puts "B"
 when 70..79: puts "C"
 else
   puts "something below C"
end

print "Enter test score: "
score = gets.to_i
letter_grade = case score
 when 90..100: "A"
 when 80..89: "B"
 when 70..79: "C"
 when 50..59, 60..69: "D"
 else
   "Failing"
end

puts "You have received #{letter_grade}"

gets



























