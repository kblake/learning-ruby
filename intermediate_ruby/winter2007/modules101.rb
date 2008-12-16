module Debug
  def who_am_i?
    "#{self.class.name} #{self.object_id}: #{self.to_s}"
  end
end

module Action
  DAMAGE_POINTS = 100
  def turn_off
    "go to sleep"
  end
end

class Person
  include Action,Debug
  attr_accessor :name
  def initialize(name="No name")
    @name = name
  end
  def to_s
    "Hello my name is #{@name}"
  end
end

class Gadget
  include Debug,Action
  attr_accessor :price
  def initialize(price=0.0)
    @price = price
  end
  def to_s
    "I am valued at #{@price}"
  end
end

p = Person.new
puts p.name
puts p.who_am_i?
puts p.turn_off
puts
g = Gadget.new
puts g.price
puts g.turn_off
puts Action::DAMAGE_POINTS
