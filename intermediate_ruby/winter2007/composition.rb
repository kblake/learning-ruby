class Person
	attr_accessor :name,:home,:work
	attr_reader :foods
	def initialize(name="No name",home=Address.new,work=Address.new)
		@name = name
		@home = home
		@work = work
		@foods = FavoriteFoods.new
	end
	
	def update_address(location,address)
		eval("@#{location}=address")	
	end
	
	def to_s
		"\n#{self.class}\n============\nName: #{@name}\nHome Address: #{@home}\nWork Address: #{@work}\nFavorite Foods: #{@foods}"
	end
end

class Address
	attr_accessor :street,:city,:state,:zip
	def initialize(street="No street",city="No city",state="No state",zip="No zip")
		@street,@city,@state,@zip = street,city,state,zip
	end
	def update_all(street,city,state,zip)
		@street,@city,@state,@zip = street,city,state,zip
	end
	
	def to_s
		"#{@street}, #{@city} #{@state} #{@zip}"
	end
end

class FavoriteFoods
	attr_reader :foods
	def initialize
		@foods = []
	end
	def add(*foods)
		foods.each {|food|@foods << food}
	end
	def to_s
		(@foods.empty?)? "No foods today" : @foods.join(", ")
	end
end

class Student < Person
	attr_accessor :sid
	def initialize(name,sid)
		super(name)
		@sid = sid
	end
	def to_s
		"#{super.to_s}\nSID: #{@sid}"
	end
end



p = Person.new
puts p
puts p.name
puts p.home
puts p.work
puts p.home.street
p.home = Address.new("101 binary st","silicon valley","ca","99999")
puts p.home
p.home.street = "1101 binary st."
puts p.home
p.work.update_all("blah st.","some city","some state","some zip")
puts p.work
p.update_address("home",Address.new("101 Pines","somewhere else","wa","88888"))
puts p.home
p.foods.add("pizza","reuben","cheesecake")
p.foods.add("t-bone steak")
puts p
puts
s = Student.new("lala","12345")
puts s
s.home = Address.new("101 lala st","some valley","wa","99999")
puts s
s.foods.add("spinach","tofu","top ramen")
puts s





