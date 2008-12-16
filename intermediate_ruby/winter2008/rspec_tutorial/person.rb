class Person
  attr_accessor :firstname, :lastname

  def full_name
    "#{@firstname} #{@lastname}"
  end
end
