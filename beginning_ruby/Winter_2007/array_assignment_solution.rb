puts "Welcome to my name management program."
names = ["john doe","jack black","karmen blake"]
option = "enter"
until option == "10"
	puts "1 - View all\n2 - View first names\n3 - View last names\n4 - Add a name\n5 - Remove first name in list\n6 - Remove last name in list\n7 - Remove specific name\n8 - Insert name\n9 - Update name\n10 - Exit"
	option = gets.chomp
	puts
	case option
		when "1":  puts names.join("\n")
		when "2"
			puts "First names:"
			names.each{|name| puts name.split[0] + "\n"}
		when "3"
			puts "Last names:"
			names.each{|name| puts name.split[1] + "\n"}
		when "4"
			puts "Enter first and last name"
			name = gets.chomp
			if(names.include?(name)) #could go in more depth here...
				puts "sorry this name exists already"
			else
				names << name
			end
		when "5": puts "#{names.shift} has been removed."
		when "6": puts "#{names.pop} has been removed"
		when "7"
			names.each_with_index{|name,index| puts "#{index}: #{name}"}
			puts "Enter index of name to be removed"
			index = gets.to_i
			puts "#{names[index]} is about to be deleted."
			names.delete_at(index)
		when "8"
			puts "Enter first and last name"
			new_name = gets.chomp
			puts
			names.each_with_index{|name,index| puts "#{index}: #{name}"}
			puts
			puts "Enter index for new name"
			index = gets.to_i
			if(names.include?(new_name)) #could go in more depth here...
				puts "sorry this name exists already"
			else
				names.insert(index,new_name)
			end
		when "9"
			puts
			names.each_with_index{|name,index| puts "#{index}: #{name}"}
			puts
			puts "Enter index of name you'd like to update"
			index = gets.to_i
			puts "Enter first and last name"
			new_name = gets.chomp
			names[index] = new_name
	end
	puts
end
