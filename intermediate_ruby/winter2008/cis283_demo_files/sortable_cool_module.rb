module Sortable
  def sort(options={})
    attributes = options[:attributes].inject("["){|attribute_string, attribute| attribute_string << "object.#{attribute},"} + "]"
    options[:collection].sort_by{|object| eval(attributes)}
  end
end

class Person
  extend Sortable
  attr_accessor :firstname,:lastname,:age
  def initialize(firstname,lastname,age=0)
    @firstname = firstname
    @lastname = lastname
    @age = age
  end

  def name
    "#{@firstname} #{@lastname}"
  end

  def to_s
    "Hello my name is #{name} and my age is #{@age}"
  end
end

people = [Person.new("joe","blow",12),Person.new("joe","blow",89),Person.new("mary","watson",32),Person.new("annie","watson",9),Person.new("bob","builder",12)]

p Person.sort(:collection=>people,:attributes=>[:lastname])
p Person.sort(:collection=>people,:attributes=>[:age])
p Person.sort(:collection=>people,:attributes=>[:lastname,:firstname,:age])
