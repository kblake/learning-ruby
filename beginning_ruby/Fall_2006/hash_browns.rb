require 'rubygems'
require 'highline/import'

#empty array
a = []
#initialize arrays
a = ['lsdfj','lsjdf','lsjdf']

#empty hash
empty_hash = {}
#initialize hash values
states  = {'ct'=>'connecticut',
		'de'=>'deleware',
		'nj'=>'new jersey',
		'va'=>'virginia',
		'ny'=>'new york'
		}

#accessing a value by its key
say states['nj']	
say states['ny']
say states['de']

#add an element to a hash
states['wa'] = 'washington'
states['id'] = 'idaho'

say states['wa']

#grab multiple values at one time and put into an array
states_array = states.values_at("nj","wa")
say states_array.join(', ')
puts

#access each key-value pair one at a time quickly
states.each do |abbreviation,name|
 say "#{abbreviation}: #{name}"
end
puts
#access keys and put them into an array
abbreviations = states.keys
say abbreviations.join(', ')
puts
#access values and put them into array
names = states.values
say names.join(', ')
puts

#check for element existence, returns true or false
say "does new york exist? #{states.has_key?('ny')}"
puts

#delete an element
states.delete("ny")

#access each key-value pair one at a time quickly
states.each do |abbreviation,name|
 say "#{abbreviation}: #{name}"
end
puts

#check for key existence, returns true or false
say "does ny key exist? #{states.has_key?('ny')}"
#check for value existence
say "does new jersey value exist? #{states.has_value?('new jersey')}"

#check for empty
say "is states empty? #{states.empty?}"

#size of hash
say "states size is #{states.length}"

sorted_states = states.sort
#p sorted_states
#~ say sorted_states[0][0]
#~ say sorted_states[0][1]
#~ say sorted_states[1][0]
#~ say sorted_states[1][1]
say "first element is sorted array which so happens to be another array"
p sorted_states[0]

puts
sorted_states.each do |state_array|
	say "State info is: #{state_array[0]}: #{state_array[1]}"
	#puts state_array
end

gets































