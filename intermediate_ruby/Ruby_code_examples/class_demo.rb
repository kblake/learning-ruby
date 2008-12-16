class MyTest

  def initialize
    @property = "something"
  end
  
  def get_something
    return 3,5,6
  end
  attr_reader :property
  attr_writer :property
end

t = MyTest.new
puts t.property
t.property = "else"
puts t.property

a,b,c = t.get_something

puts a
puts b
puts c