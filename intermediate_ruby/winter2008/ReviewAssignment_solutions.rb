class Person
	attr_accessor :first_name, :last_name, :greetings
	def initialize(first_name = "unknown", last_name="unknown")
    @first_name, @last_name = first_name, last_name
    @greetings = ["hello","hola","more","here","ok","whatever"]
  end
  def to_s
    "#{@greetings[rand(@greetings.size)]} #{@first_name} #{@last_name}"
  end
end

10.times { puts Person.new }

class DomainName
  attr_accessor :domain_name
  def initialize(domain_name)
    @domain_name = domain_name
  end
  
  def starts_with_www?
    #determine if @domain_name starts with www and return true or false
  end
  
  def extension
    #extract extension from @domain_name and return it
  end
  
  def name
    #extract name from @domain_name and return it
  end
  
  def to_s
    "#{@domain_name}"
  end
end

psuedocode...
loop and read domain names from file one at a time do
  #instantiate DomainName objects from info read from the file
  domain_name = DomainName.new(domain_read_from_file)
  puts domain_name.starts_with_www?
  puts domain_name.extension
  puts domain_name.name
end