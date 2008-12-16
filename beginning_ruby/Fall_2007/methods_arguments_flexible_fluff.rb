name = "blah"
name.reverse! # ! == bang
(1..10).include?(5)  # ? == boolean

def can_drive?(age,license)
  age > 15 && license
end

puts can_drive?(15,false)
puts can_drive?(16,false)
puts can_drive?(16,true)

age = 16 #input from user
license = true

if can_drive?(age,license)
  puts "ROAD TRIP!!"
end

#default values ##########################
def print_name(first_name="No first name",last_name="No last name")
  puts "Hello #{first_name} #{last_name}"
end

print_name("john","doe")
print_name("blah")
print_name

def sum(num1=0,num2=0)
   num1 + num2
end
  
puts sum
puts sum(23)
puts sum(35,634)
#####################################




#variable list arguments #######################
# *arguments gets converted into an array
def analyze_arguments(*arguments)
  p arguments
end

analyze_arguments(34,"hello",true,8.3567,"blah")
analyze_arguments(34,true,8.3567,"blah")
analyze_arguments(34)
analyze_arguments

def sum_fluff(*numbers)
  sum = 0
  numbers.each { |num| sum += num }
  sum
end

puts sum_fluff
puts sum_fluff(39,256,-354,35)
puts sum_fluff(39,35)
puts sum_fluff(0,0,0,35,25,64,356,356,23,74)

def print_foods(*foods)
  puts "Your order is:"
  foods.each {|food| puts food }
end

print_foods("pizza","coffee","donuts")
print_foods("steak","potatoes")
print_foods("mac 'n cheese","hot dogs", "burritos","tacos")

#if splat is used with other arguments, splat must go last
def print_family(last_name,*first_names)
  puts "Last name: #{last_name}"
  puts "First name(s):"
  puts first_names.join("\n")
end

print_family("Flinstone","Fred","Wilma","Pebbles","Dino")
#####################################


#keyword/named arguments#########################
def print_full_name(names)
  #customized defaults
  defaults = {
    :first=>"*First name not provided*",
    :middle=>"*Middle name not provided*",
    :last=>"*Last name not provided*"
    }
  defaults.merge!(names)
  defaults.default = "****"  #generic default for all
  
  #assuming a nil value also has a boolean value of false
  puts "#{defaults[:first]} #{defaults[:middle]} #{defaults[:last]}"
end

print_full_name(:first =>"John",:last=>"Doe",:middle=>"Blah")
#rearrange order
print_full_name(:last=>"Doe",:middle=>"Blah",:first =>"John")
print_full_name(:middle=>"Blah",:last=>"Doe",:first =>"John")

#unsupplied arguments
print_full_name(:last=>"Doe",:first =>"John")
print_full_name(:middle=>"Doe",:first =>"John")
print_full_name(:last=>"Doe",:middle =>"John")


#other arguments too
########################################





































































