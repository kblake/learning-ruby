require 'validatable'
class Person
	include Validatable  #bring in objects,methods that will do validation stuff
	attr_accessor :name,:email,:sid
	validates_presence_of :name, :message=>"Name cannot be empty"
	validates_presence_of :email, :message=>"Email cannot be empty"
	validates_presence_of :sid, :message=>"SID cannot be empty"
	#validates_format_of :email,:with=>/^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i,:message=>"Email is invalid"
	SID_ERROR = "SID must be a length of 4 only"
	validates_length_of :sid, :maximum=>4,:message=>SID_ERROR
	validates_length_of :sid, :minimum=>4,:message=>SID_ERROR
end

p = Person.new
puts p.valid?
puts p.errors.on(:email)
p.email = "john@johndoe.com"
puts p.errors.on(:email)

p.sid="1234"
puts p.errors.on(:sid)
p p.errors