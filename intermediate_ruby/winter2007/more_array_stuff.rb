#collect, map
#do something to each item
names = ["john","lalalala","doug","marie","doe"]
p names
new_names = names.collect{|name| name + " was here!"}
#names.names.collect!{|name| name + " was here!"}
#names.map... does the same thing
p new_names


#inject
#another way to do accumulation
numbers = [3,22,43,56,123]
sum = numbers.inject{|sum,num| sum + num}
puts sum

product = numbers.inject{|product,num| product * num}
puts product

longest_name = names.inject{|longest_sofar,word|
	longest_sofar.length > word.length ? longest_sofar : word
}
puts longest_name


gets
