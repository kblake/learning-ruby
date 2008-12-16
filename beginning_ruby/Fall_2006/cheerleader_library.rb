def setup_cheerleader_array
	cheerleaders = ["Wilkens, Leah","Davis, Elizabeth","Ott, Whitney","Parker, Christina","Brown, Cori"].sort
	#check to see if file exists?  true or false
	#use contents of file
	if File.file? 'cheerleaders'
		open('cheerleaders','r') do |file|
			cheerleaders_string = file.read
			cheerleaders = cheerleaders_string.split("\n")
		end
	end
	
	#return array
	cheerleaders
end

def add_cheerleader
	#~ first_name = ask "Enter first name: "
	#~ last_name = ask "Enter last name: "
	#~ full_name = "#{last_name}, #{first_name}"
	name = ask "enter first and last name"
	name_array = name.split(' ')
	full_name = name_array[1].capitalize + ", " + name_array[0].capitalize
end

def delete_cheerleader cheerleaders
	cheerleaders.each_with_index {|cheerleader,index| say "#{index + 1}) #{cheerleader}" }
	index = ask("Enter in number of the cheerleader you'd like to delete",Integer) - 1
	cheerleaders.delete_at(index)
	cheerleaders
end

def report cheerleaders
	#do fancy stuff
	#create html output string, push onto it
	html = "<html><head><title>hola</title></head><body>"
	html << "<h1>Your SCC cheerleaders!!</h1>"
	html << "<ul>"
	cheerleaders.each do |cheerleader|
		html << "<li>#{cheerleader}</li>"
	end
	html << "</ul>"
	html << "<table border='1'>"
	html << "<tr><td>Last, First</td></tr>"
	row_count = 1
	cheerleaders.each do |cheerleader|
		html << "<tr bgcolor='#{row_count%2==1 ? '#006688':'#000099'}'><td>#{cheerleader}</td></tr>"
		row_count += 1
	end
	html << "</table>"
	html << "</body></html>"
	
	#write the html output string to a file
	open('cheerleader_roster.html','w') do |file|
		file.write(html)
	end
	
	#open ie, load the generated file into browser
	ie = Watir::IE.new
	ie.goto("h:\\cheerleader_roster.html")
		
end
	
def save_cheerleaders cheerleaders
	#save the state of the array
	open('cheerleaders','w') do |file|
		file.write(cheerleaders.join("\n"))
	end
end









