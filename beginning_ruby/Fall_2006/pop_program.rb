$stdout.sync = true
require 'pop_library'

cis_machine = PopMachine.new
cis_machine.view_inventory
puts
puts "Quantity for Mt. Dew is #{cis_machine.quantity_for(:mt_dew)}"
cis_machine.add_pop(:root_beer,25)
puts
cis_machine.view_inventory
puts
puts "Enter name of pop to get quantity for"
name = gets.chomp.to_sym  #convert string to a symbol
puts "Quantity for #{name} is #{cis_machine.quantity_for(name)}"
puts
puts "To add a pop, enter pop name"
name = gets.chomp.to_sym
puts "Enter quantity"
quantity = gets.to_i
cis_machine.add_pop(name,quantity)
puts
cis_machine.view_inventory
puts
puts "Money in the machine is #{cis_machine.revenue}"
puts "Enter name of pop to buy"
name = gets.chomp.to_sym
puts "Give me your money"
money = gets.to_f
change = cis_machine.buy_pop(name,money)
puts "Enjoy your #{name}, your change is #{change}"
puts "Money in the machine is #{cis_machine.revenue}"
cis_machine.view_inventory

gets
















