def read_names
	names = []
	file_name = "names.txt"
	if File.exists?(file_name)
		IO.foreach(file_name)do |line| 
			names << line.chomp
		end
	else
		names = []
	end
	names
end

def display_names(names)
	names.each do |name|
		name_array = name.split(",")
		puts name_array[0].capitalize + " " + name_array[1].capitalize + " " + name_array[2]
	end
end

def sum_ages(names)
	sum = 0
	names.each do |name|
		name_array = name.split(",")
		sum += name_array.last.to_i
	end
	sum
end

def find_high_low_age(high_low,names)
	ages = []
	names.each do |name|
		name_array = name.split(",")
		ages << name_array.last.to_i
	end
	if(high_low == "high")
		return ages.max
	elsif(high_low == "low")
		return ages.min
	end
end

names = read_names
#p names
display_names(names)
puts "Sum of ages: #{sum_ages(names)}"
puts "Oldest age: #{find_high_low_age("high",names)}"
puts "Youngest age: #{find_high_low_age("low",names)}"


gets