name = "john doe"
puts name.size
hello1 = "hello " + name
puts hello1
hello2 = "goodbye " << name
puts hello2
hello3 = "hola #{name}"
puts hello3

puts name[0]
puts name[0].chr
puts name[0..3]
puts name[0..3].capitalize
puts name[0..3].upcase
name[0..3] = "jane"
puts name
name.gsub!("jane","john")
puts name

name.each_byte do |char|
  print "#{char.chr} "
end

puts

name.each_byte { |char| print "#{char.chr} " }












