module ClassMethods
  def run
    puts "I'm running..."
  end
end

class Thing
  extend ClassMethods
end

Thing.run

module InstanceMethods
  def jump
    puts "jump around, jump around, jump up and get down!"
  end
end

class OtherThing
  include InstanceMethods
end

some_object = OtherThing.new
some_object.jump

class Widget
end

widget1 = Widget.new
widget1.extend(InstanceMethods)
widget1.jump
widget2 = Widget.new
widget2.jump



























