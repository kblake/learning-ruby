#A Symbol is the most basic Ruby object you can create. It's just a name and an internal ID. 
#Symbols are useful because a given symbol name refers to the same object throughout a Ruby program. 
#Symbols are more efficient than strings. 
#Two strings with the same contents are two different objects, but for any given name there is only one Symbol object. 
#This can save both time and memory.

puts "hello".object_id
puts "hello".object_id
puts :hello.object_id
puts :hello.object_id

puts :hello
puts :hello.to_s
puts :hello.to_s.object_id

puts "hello".to_sym.object_id


states = {
  :wa => "washington",
  :or => "oregon",
  :id => "idaho"
}

p states

puts states[:wa]
states[:wa] = "Washington"
p states