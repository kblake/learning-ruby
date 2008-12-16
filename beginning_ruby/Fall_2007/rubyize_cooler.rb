BAD_WORDS = ["terrible","bad","ugh","blah"]
initial_input = "This is a blah terrible situation"

#SOLUTION 1
input = initial_input.split(" ")
input.each_with_index do |word,counter|
   if BAD_WORDS.include?(word.downcase)
     input[counter] = "*" * word.length
   end
end
puts input.join(" ").to_s

#SOLUTION 2
input = initial_input
BAD_WORDS.each do |word|
    input.gsub!(word,"*" * word.length)
end
puts input
