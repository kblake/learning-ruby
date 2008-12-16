input = "This is a terrible situation".split(" ")
counter = 0
input.each do |word|
 word = word.downcase
 if word == "terrible" || word == "bad" || word == "ugh" || word == "blah"
   index=0
   word.length.times do
      input[counter][index,1] = "*"
      index+=1
   end
 end
 counter += 1
end
puts input.join(" ").to_s
