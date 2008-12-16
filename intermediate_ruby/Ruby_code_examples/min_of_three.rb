puts "Enter three integers: "
num1 = gets.chomp.to_i
num2 = gets.chomp.to_i
num3 = gets.chomp.to_i

if num1 < num2
  if num1 < num3
    min = num1
  else
    min = num3
  end
else
  if num2 < num3
    min = num2
  else
    min = num3
  end
end

puts "Minimum value: #{min}"