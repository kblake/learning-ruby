def upcase_three(string1,string2,string3)
  string1 = string1.upcase
  string2 = string2.upcase
  string3 = string3.upcase
  return string1,string2,string3
end

string1,string2,string3 = upcase_three("hello","goodbye","blah")

puts string1
puts string2
puts string3

puts

########################################
# REFACTORING
# "Refactoring" by Martin Fowler
# improve readability and code structure while preserving
# meaning and functionality
###########################
def upcase_string(string)
  string.upcase
end

my_strings = ["hello","goodbye","blah"]

my_strings.each {|some_string| puts upcase_string(some_string)}









