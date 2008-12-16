require "my_classes"

dice = PairOfDice.new

10.times do
  dice.roll
  puts dice
end