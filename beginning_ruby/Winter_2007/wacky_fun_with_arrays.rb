wacky = [89.9,34,"tim",true,[23,33]]
#~ puts wacky
names = ["ada","belle","chris","john","jack","mary"]
#~ puts names[2]
#~ puts names[100]
#~ puts names[0,2]
#~ puts names[0..4]
#~ puts names[-3,2]
languages = ['java','ruby','vb','php']
#~ puts "Language Listing:"
#~ for language in languages
  #~ print language + " "
#~ end
#~ puts
#~ for index in 0..(languages.length - 1)
  #~ print languages[index] + " "
#~ end
#~ puts
#~ languages.each do |language|
  #~ print language + " "
#~ end
#~ puts
#~ languages.each {|language| print language + " "}
#~ puts
#~ languages.length.times do |index|
	#~ print languages[index]," " 
#~ end


#easy printing
languages_output = languages.join(' ')
puts languages_output
puts languages.join('-')
puts languages.join('*')

#append element to array
#add element to the end of the array
languages.push('c#')
languages.push('perl')
puts languages.join(' ')
languages << "python"
puts languages.join(' ')

#helpful array methods
puts "First element is: #{languages.first}"
puts "Last element is: #{languages.last}"

removed_element = languages.pop
puts "Removed element is: #{removed_element}"
puts languages.join(' ')


#insert element in the middle
#elements get shifted to the right
languages.insert(3,"C++")
puts languages.join(' ')

#get rid of duplicate
languages << "ruby"
puts languages.join(' ')
languages.uniq!
puts languages.join(' ')


#delete in the middle of array
puts "deleting vb..."
languages.delete_at(2)
puts languages.join(' ')

puts "deleting perl..."
languages.delete("perl")
puts languages.join(' ')

puts "adding java..."
languages << "java"
puts languages.join(' ')
puts "deleting all javas???"
languages.delete("java")
puts languages.join(' ')


gets
















































