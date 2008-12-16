class Animal
    def speak
        "please override me"
    end
end
class Dog < Animal
    def speak # I don't like the parent's speak, so override it
        "ruff ruff"
    end
end
class Duck < Animal
    def speak
        "quack quack"    
    end
end

animals = [Dog.new, Duck.new, Dog.new, Dog.new, Duck.new]

#notice here, we don't care what type animal is, all I care about 
#is that it has the ability to speak
animals.each do |animal| 
  puts "#{animal.class} (#{animal.object_id}): #{animal.speak}" 
end

class Zoo
  attr_reader :animals
  def initialize
    @animals = []
  end
  def add_animal(animal)
    @animals << animal
  end
  def make_a_raucus
    @animals.each {|animal| puts animal.speak}
  end
end