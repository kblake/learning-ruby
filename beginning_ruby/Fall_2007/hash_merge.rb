#merge - another way to update values in a hash
students = {111=>"John Doe",222=>"Jane Doe",333=>"Blah Blah",444=>"Wake Up"}
p students
#painfully update more than one value
students[111] = "Johnny Doe"
students[222] = "Janey Doe"

p students
#udpate multiple pairs at once
students.merge!({111=>"John Doe",222=>"Jane Doe"})
p students

#you may update and add too
students.merge!({333=>"real name",383=>"wookie"})
p students