def read_array
	numbers_from_file = []
	file_name = "save_array.txt"
	if File.exists?(file_name)
		IO.foreach(file_name)do |line| 
			numbers_from_file = line.split(",").collect{|number| number.to_i}
		end
	else
		numbers_from_file = []
	end
	#numbers_from_file = numbers_from_file.each_with_index do |number,index| 
	#	numbers_from_file[index] = number.to_i
	#end
	#p numbers_from_file
	numbers_from_file
end

def write_array(numbers)
	output = numbers.join(",")
	open("save_array.txt","w") { |file|	file.write(output) }
end

numbers = read_array
#do stuff
#like run your menu driven program
#view all, view one,sum, average, low, high,add, delete, update
#when the user exits, write to file
write_array(numbers)





