num_array = [0,0,0,0,0,0,0,0,0,0]

#populate array
100.times do
    random_num = rand(100) + 1
    correct_index = (random_num == 100) ? 9 : random_num/10
    num_array[correct_index] += 1
end

#print histrogram
for index in 0..9
  puts "#{(index*10) + 1}-#{(index+1)*10} \t| #{'*' * num_array[index]}"
end
