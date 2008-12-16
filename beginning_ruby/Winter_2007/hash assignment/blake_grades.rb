require 'rubygems'
require 'xmlsimple'  
require 'highline/import'

grades = XmlSimple.xml_in 'grades.xml', 'ForceArray' => false
scores = grades['grades']

#solution ############################
def letter_grade(score)
	case score
		when 90..100: "A"
		when 80..89: "B"
		when 70..79: "C"
		when 60..69: "D"
		else "Not so good"			
	end
end

def proper_name(name)
	name_arr = name.split("_")
	name_arr[0].capitalize!
	name_arr[1].capitalize!
	name = name_arr.join(" ")
end

names = scores.keys #get all keys as an array
names.map! { |name| name = proper_name(name) } #update names
grades = scores.values #get all values as an array
grades.map!{|grade| grade.to_i } #convert strings to numbers
highest_grade = grades.max
lowest_grade = grades.min
average_grade = grades.inject(0){|sum,num| sum+=num}/grades.size

print "Highest grade is: #{proper_name(scores.invert[highest_grade.to_s])} - "
print "#{highest_grade} (#{letter_grade(highest_grade)})"
puts
puts "Lowest grade is: #{proper_name(scores.invert[lowest_grade.to_s])} - #{lowest_grade} (#{letter_grade(lowest_grade)})"
puts "Average grade is #{average_grade} (#{letter_grade(average_grade)})"
########################################










