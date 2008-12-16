def hello
  puts "hello"
end
hello

def hello_someone(name)
  puts "hello #{name}"
end
hello_someone("jane doe")

def get_sum(num1=0, num2=0)
  num1 + num2
end
puts "sum of 4 and 5 is: #{get_sum(4,5)}"
puts get_sum

def coolDude(arg1="Miles", arg2="Coltrane", arg3="Roach")
  "#{arg1}, #{arg2}, #{arg3}."
end
puts coolDude
puts coolDude("Bart")
puts coolDude("Bart", "Elwood")
puts coolDude("Bart", "Elwood", "Linus")
puts coolDude (nil,nil,"chicken")


def variable_arguments(arg1, *rest)
  "Got #{arg1} and #{rest.join(', ')}"
end
puts variable_arguments("one")
puts variable_arguments("one", "two")
puts variable_arguments("one", "two", "three")
puts

def get_sum(*nums)
  nums.inject {|temp_sum,a_num| temp_sum+a_num}
end

puts get_sum
puts get_sum(0)
puts get_sum(3)
puts get_sum(3,56)
puts get_sum(3,2,6,1,63)

puts