puts "Enter a numeric grade (0 to 100): "
grade = gets.chomp.to_i
category = grade/10
output = "That grade is "
output += case category
          when 10 then "a perfect score.  Well done."
          when 9 then "well above average.  Excellent."
          when 8 then "above average.  Nice job."
          when 7 then "average."
          when 6 then "below average.  You should see the instructor to clarify the material presented in class."
          else "not passing."
        end
puts output