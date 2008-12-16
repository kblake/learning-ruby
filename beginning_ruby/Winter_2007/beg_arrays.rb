str = "hello world"
num = 34
float = 3.333
have_money = false

#create an empty array
my_array = []
names = ["John","Doe","Blah","Mary","Dima","Doug"]
#puts names[1]
#puts
#puts names[2..4]
#puts
#puts names[-5,3]

numbers = [3,100,-10,5]
puts numbers[2]
p numbers  #p = inspect (what does this array look like in memory)
numbers << -34  #append operator, add -34 to the end of the array
p numbers
numbers2 = [3,4,6,7]
combined_arrays = numbers + numbers2 #combine arrays
p combined_arrays
first_value = numbers.shift #remove the first element from the array
p first_value
p numbers
last_value = numbers.pop #remove the last element from the array
p last_value
p numbers

#more cool, wild, wacky things you can do with arrays
puts names[0]
puts names.first
puts names[names.length - 1]
puts names.last
puts names.empty? #return true or false
puts names.include?("Blah")
puts names.include?("Nobody")
names.insert(3,"Nobody")
p names
#names.insert(100,"lala")
#names[100] = "lala"
names[3] = "Somebody"
p names

#output each element with a delimiter/separator (character/substring) between each element
puts names.join("\t")
puts names.join(" : ")

sorted_names = names.sort #copy the original then sort the copy, original is unchanged
p names
p sorted_names

names.sort! #sorted and changed the original array
p names

names.insert(0,"Doug")
p names

names.uniq!
p names

puts names[0].length
puts names[1].length
puts names[4].reverse
puts names[0][0].chr
puts names[3][2].chr




gets



