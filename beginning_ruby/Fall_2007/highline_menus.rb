require 'rubygems'
require 'highline/import'

loop do
  choose do |menu|
    menu.prompt = "What toppings?"
    menu.choice "Pepperoni" do
      puts "heart burn here I come..."
    end
    menu.choice "C. Bacon" do
      puts "where's the pineapple"
    end
    menu.choice "Anchovies" do
      puts "yuck!"
    end
    menu.choice "Cheese" do
      #cheese submenu #######################
        choose do |cheese_menu|
          cheese_menu.prompt = "Choose your cheese"
          cheese_menu.choice "Cheddar" do
            puts "you chose cheddar"
          end
          cheese_menu.choice "Mozzarella" do
            puts "you chose Mozzarella"
          end
          cheese_menu.choice "Parmesan" do
            puts "you chose parmesan"
          end
        end
        #################################
      end
    menu.choice "Exit" do
        puts "bye bye!"
        exit  #command to exit menu system!!
    end 
  end
end









