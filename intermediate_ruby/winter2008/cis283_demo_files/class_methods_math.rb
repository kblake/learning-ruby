class MyMath
  #when defining a class method start with self.
  def self.add(*numbers)
    numbers.inject(0) {|number, sum| sum += number}
  end
  def self.multiply(*numbers)
    numbers.inject(1) {|number, product| product *= number }
  end
  def self.difference(num1,num2)
    (num1-num2).abs
  end
end

#when calling a class method the syntax is ClassName.method_name
puts MyMath.add(3,5,356,23,9)
puts MyMath.add(84,2,42)
puts MyMath.multiply(8,3,5)
puts MyMath.difference(38,32)
puts MyMath.difference(8,38)