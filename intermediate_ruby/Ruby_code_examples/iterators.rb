3.times do
  print "Ho! "
end
puts

num = 10
num.times do
  print "lala "
end
puts

0.upto(9) do |x|
  print "#{x} "
end
puts

9.downto(3)do|x|
  print "#{x} "
end
puts

12.step(0,-3) {|x| print "#{x} "}
puts

[1,3,4,2,8].each {|num| print "#{num} "}
puts

for name in ['john','jane','mary']
  puts "#{name}"
end

for i in 1..3
  print i," "
end
puts

nums = [1,3,5,7]
sum = nums.inject {|temp_sum,a_num| temp_sum+a_num}
puts sum

product = nums.inject {|product,a_num| product*a_num}
puts product