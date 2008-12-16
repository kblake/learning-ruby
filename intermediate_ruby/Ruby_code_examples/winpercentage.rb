NUM_GAMES = 12
puts "Enter the number of games won (0 to #{NUM_GAMES}):"
won = gets.chomp.to_i
while won < 0 || won > NUM_GAMES
  puts "Invalid input. Please reenter: "
  won = gets.chomp.to_i
end
ratio = (won/NUM_GAMES.to_f) * 100
puts "Winning percentage: #{ratio.to_i}%"