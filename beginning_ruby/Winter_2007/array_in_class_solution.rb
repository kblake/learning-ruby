names = ["john","doe","blah"]
continue = "y"
while(continue == "y")
	puts "1 - view all\n2 - view first\n3 - view last\n4 - add a name\n5 - update\n6 - delete"
	selection = gets.to_i
	if selection == 1
		puts names.join(" : ")
	elsif selection == 2
		puts names.first
	elsif selection == 3
		puts names.last
	elsif selection == 4
		puts "enter name"
		name = gets.chomp
		names << name #alternately: names.push(name)
	elsif selection == 5
		names.each_with_index do |name, index|
			puts "#{index} #{name}"
		end
		puts "please select the id number of the name to update"
		id = gets.to_i
		name_to_update = names[id]
		puts "enter new value"
		new_name = gets.chomp
		names[id] = new_name #assign newly inputted name over the old value of selected id
		puts "#{name_to_update} has been updated to #{new_name}"
	elsif selection == 6
		names.each_with_index do |name, index|
			puts "#{index} #{name}"
		end
		puts "please select the id number of the name to delete"
		id = gets.to_i
		name_to_delete = names[id]
		names.delete_at(id)
		puts "#{name_to_delete} has been deleted"
	end
	puts "Do you want to continue? (y/n)"
	continue = gets.chomp
end