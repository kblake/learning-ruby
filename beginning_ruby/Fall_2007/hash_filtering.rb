students = {111=>"John Doe",222=>"Jane Doe",333=>"Blah Blah",444=>"Wake Up"}

#find gets the first successful instance
result = students.find{|key,value| key > 300}
p result

#find all successful instances
result = students.find_all{|key,value| key > 300}
p result
puts result[1][1]
puts result[0][1]
puts result[0][0]
p result[1]
hash_result = Hash[*result.flatten]
p hash_result