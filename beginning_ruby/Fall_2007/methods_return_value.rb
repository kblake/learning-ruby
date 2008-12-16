name = "blah"
puts name.size #output of a returned value
name_size = name.size #store returned value
puts name_size
total_age = name_size + 10

#watchout, this is not doing anything with returned value
name.size #method call works great, did not ouput or get stored

#universal syntax to return a value
def reverse_string(some_string)
  reversed_string = some_string.reverse
  return reversed_string #usually it is the last statement in a method
end

#ruby version (no return keyword)
def ruby_reverse(some_string)
  some_string.reverse
end
puts ruby_reverse("blah")
#####################


name = "John Doe"
puts "#{name} reversed is #{reverse_string(name)}"
reversed_name = reverse_string(name)
#do something cool with variable...

#pitfall!!
reverse_string(name)












