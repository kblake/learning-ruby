require 'rubygems'
require 'highline/import'

cheerleaders = {	
			"beanie"=>"Wilkens, Leah",
			"bambi"=>"Davis, Elizabeth",
			"scout"=>"Ott, Whitney",
			"ople"=>"Parker, Christina",
			"willie"=>"Brown, Cori"
		}
say "Welcome to our cheerleader management application"

while agree("Would you like to continue to manage? (y/n)",true)
	option = ask "Enter 'v' to view all, 'a' to add, 'd' to delete"
	case option
	  when 'v'
		cheerleaders.each do |pet_name,name|
			say "#{pet_name}: #{name}"
		end
	  when 'a'
		name = ask "enter first and last name"
		name_array = name.split(' ')
		begin
			pet_name = ask "Enter your pet name"
			say "Duplicate pet name!" if cheerleaders.has_key?(pet_name)
		end while cheerleaders.has_key?(pet_name)
		full_name = name_array[1].capitalize + ", " + name_array[0].capitalize
		cheerleaders[pet_name] = full_name #add to hash
	  when 'd'
		begin
			pet_name_to_delete = ask "Enter in the pet name of the cheerleader you'd like to delete"
			say "Pet name does not exist!" unless cheerleaders.has_key?(pet_name_to_delete)
		end until cheerleaders.has_key?(pet_name_to_delete)
		cheerleaders.delete(pet_name_to_delete)
		say "#{pet_name_to_delete} has been deleted."
	  #~ when 's': say cheerleaders.sort.join("\n")
		#~ sorted_cheerleaders = cheerleaders.sort
		#~ say sorted_cheerleaders.join("\n")
	end

end