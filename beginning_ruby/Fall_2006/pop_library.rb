class PopMachine
	def initialize
		@pop_hash = {
			:pepsi=>30,
			:mt_dew=>80,
			:diet_coke=>1,
			:orange_crush=>10,
			:strawberry=>20
		}
		@revenue = 20.0
		#static constant
		#shared and cannot be changed
		@@COST = 0.50
		
		#static variable
		#shared and can be changed
		@@company = "Pepsi Cola Distribution"
	end
	
	def view_inventory
		@pop_hash.each do |name,quantity|
			puts "#{name}: #{quantity}"
		end
	end
	
	def quantity_for(name)
		@pop_hash[name]
	end
	
	def add_pop(name,quantity)
		@pop_hash[name] = quantity
	end
	
	def buy_pop(name,money)
		@revenue += @@COST
		@pop_hash[name] -= 1
		change = money - @@COST
	end
	
	def revenue
		@revenue
	end
	
end


























