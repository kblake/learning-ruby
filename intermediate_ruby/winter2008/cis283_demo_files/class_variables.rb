class SayWhat
  @@total = 0 #shared all instances
  def initialize(message,times)
    @message = message
    @times = times
  end
  def say
    @@total += @times
    (@message + " ") * @times
  end
  def total_said
    "Total spoken so far: #{@@total}"
  end
end

say1 = SayWhat.new("hola",3)
say2 = SayWhat.new("hello",6)
say3 = SayWhat.new("blah",2)

puts say1.say
puts say1.total_said
puts
puts say2.say
puts say2.total_said
puts
puts say3.say
puts say3.total_said

