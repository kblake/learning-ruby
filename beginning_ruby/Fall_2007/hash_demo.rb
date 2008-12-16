h = {} #empty hash
states = {
  'ct'=>'connecticut',
  'de'=>'deleware',
  'nj'=>'new jersey',
  'va'=>'virginia',
  'ny'=>'new york'
}

#read key-value pairs
puts states['de']
puts states['ny']

#add key-value pairs
p states
states['wa'] = 'washington'
p states

#update a value of a particular key
states['wa'] = 'western australia'
p states

#iterate over all pairs
states.each do |abbreviation,state|
  puts "#{abbreviation.upcase} : #{state.capitalize}"
end

abbreviations = states.keys #array
p abbreviations

state_names = states.values #array
p state_names

inverted_states = states.invert
p inverted_states

h = {"a"=>"b","b"=>"c","c"=>"b"}
p h
x = h.invert #be careful, keys still need to be unique, you may lose data
p x

if states.has_key?("wa")
  puts states["wa"]
end

if states.has_key?("blah")
  puts states["blah"]
else
  puts "does not exist"
end

puts "new york is there" if states.has_value?("new york")






















