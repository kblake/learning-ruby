require 'extensions/numeric'
RATE = 8.25
STANDARD = 40
pay = 0.0
puts "Enter number of hours worked: "
hours = gets.chomp.to_i
if hours > STANDARD
  pay = STANDARD * RATE + (hours-STANDARD) * (RATE * 1.5)
else
  pay = hours * RATE
end
puts "Gross earnings: #{pay.format_s(:usd)}"


#ANOTHER WAY TO DO IT IN RUBY

pay = if hours > STANDARD
        STANDARD * RATE + (hours-STANDARD) * (RATE * 1.5)
      else
        hours * RATE
      end
puts "Gross earnings, 2nd version: #{pay.format_s(:usd)}"