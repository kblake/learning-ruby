require 'rubygems'
require 'highline/import'

#empty hash
h = {}

#initialize hash
states = {
       #"string index/key" referencing its => "value"
	'ct'=>'connecticut',
	'de'=>'delaware',
	"nj"=>"new jersey",
	'va'=>'virginia',
	'ny'=>'new york'
}

phonebook = {
	'9999999999'=>'someone',
	'1111111111'=>"someone",
	'1234567890'=>'someone else'
}

location = {
	'509' => 'washington',
	'208' => 'idaho',
	'206' => 'seattle'
}

#access a value by its string index/key
say states['de']
say states['ny']

#add/append to the end of the hash
#use unique index/key
states['wa'] = "washington"

#this does not append, it replaces, be careful
states['nj'] = "new jkdkdkdk"

#iterate over hash
states.each do |abbreviation,state|
	say "#{abbreviation.reverse}:#{state.reverse}"
end
puts
#grab the keys only, returns an array
abbreviations = states.keys
p abbreviations
say abbreviations.size.to_s
say abbreviations.first
say abbreviations.last
say abbreviations[abbreviations.length/2]
puts
names = states.values
p names
say names.size.to_s
say names.first
say names.last
say names[names.length/2]
puts
p states.invert

abbreviation = ask("Looking for state to annihilate? Enter abbreviation.")
#has_key? returns true or false (great selection/repetition structures)
if(states.has_key?(abbreviation))
	say "You are about to delete #{states[abbreviation]}"
	states.delete(abbreviation) #delete(pass in key here)
	p states
else
	say "No delete for you today!"
end



