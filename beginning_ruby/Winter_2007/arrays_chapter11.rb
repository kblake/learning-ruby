#new array
a = []
#hold different types of values, although usually not used for that
a = [1,3.3,"some string",false]
a = []
a[0] = "first"
p a
a = [1,2,3,4,5]
p a[2]
p a[1,4]
p a[1..3]

#append value onto end of array
a << 6
p a
b = [7,8,9]
p b

new_array = a + b
p new_array

#remove first element
value = new_array.shift
p value

#remove last value
value = new_array.pop
p value


#array methods
names = ["tom","dick","harry"]
p names.first
p names.last
p names.empty?
p names.include?("harry")
p names.include?("joe")
names.insert(2,"mary")
p names
p names.join(" : ")
puts "Length of array is #{names.length}"
p names.sort!
names << "tom"
p names
p names.uniq!

#call methods on objects in the array



