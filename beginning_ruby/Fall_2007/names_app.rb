require "name_library"

people = People.new
puts people.debug_view
people.print
people.print_ages
puts "Average age is: #{people.average_age}"
puts people.firstnames
puts "Anyone there? #{people.empty?}"
puts "Does john exist? #{people.name_present?("john")}"
puts "Does paul exist? #{people.name_present?("paul")}"

a_person = Person.new("caleb","simmons",65)
people.add(a_person)

puts "Does caleb exist? #{people.name_present?("caleb")}"
puts people.debug_view















