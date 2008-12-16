a = [3.14, "pie", 99]
puts "Length of internal string is #{a[1].length}"
puts a.length
puts a[0]
puts a[1]
puts a[2]
puts a[3]
puts

a = [1,3,5,7,9]
puts a[-1]
puts a[-2]
puts a[-99]
puts

print a[1,3]
puts

print a[1..3]
puts
print a[2...4]
puts
a[99] = 33
print a
puts
a << 120
print a[100]
puts

usernames = {'jdoe'=>'John Doe', 'kblake'=>'Karmen Blake', 'mjones'=>'Mary Jones'}
puts usernames['jdoe']
puts usernames['kblake']
puts usernames['mjones']
usernames['taffholter'] = "Tom Affholter"
puts usernames['taffholter']