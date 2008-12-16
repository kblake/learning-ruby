names = ["joe","mary","bob","bill","flash","Blah"]

puts "Hello Welcome to my Name Manager"
puts "--------------------------------"
puts
option = "xyz"

until option == "e" do
  puts
  puts "Select letter to perform action"
  puts "v - View All"
  puts "a - Add name"
  puts "d - Delete name"
  puts "u - Update a name"
  puts "e - Exit"
  option = gets.chomp.downcase
  puts
  case option
    when "v": puts names.join("\n")
        #names.each do |name|
         # puts name
        #end
    when "a"
      puts "Enter name"
      name = gets.chomp
      names << name
    when "d"
      puts "Enter name to delete"
      name = gets.chomp
      if names.include?(name)
        original_size = names.size
        names.delete(name)
        amount_deleted = original_size - names.size
        puts "#{amount_deleted} occurence(s) of #{name} have been deleted"
      else
        puts "#{name} does not exist."
      end
    when "u"
      names.each_with_index do |name,index|
          puts "#{index + 1}) #{name}"
      end
      puts "Enter number of name to update"
      index = gets.to_i
      puts "Enter updated name"
      new_name = gets.chomp
      names[index - 1] = new_name
    when "e": break
    else
      puts "This is not a valid option.  Try again."
  end
end
puts "goodbye"




















