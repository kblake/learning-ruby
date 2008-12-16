require 'rubygems'
require 'highline/import'
require 'watir'
require 'cheerleader_library'

cheerleaders = setup_cheerleader_array

say "Welcome to our cheerleader management application"

while agree("Would you like to continue to manage? (y/n)",true)
	option = ask "Enter 'v' to view all, 'a' to add, 'd' to delete, 'r' to report"
	case option
		when 'v': say cheerleaders.join("\n")
		when 'a' 
			cheerleaders << add_cheerleader
			cheerleaders.sort!
		when 'd': cheerleaders = delete_cheerleader cheerleaders
		when 'r': report cheerleaders
	end
end

#bye bye, save array out to file
save_cheerleaders cheerleaders

























