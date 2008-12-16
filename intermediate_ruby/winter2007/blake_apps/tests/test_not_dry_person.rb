require File.join(File.dirname(__FILE__),'..','models','person')
require 'test/unit'

class TestNotDryPerson < Test::Unit::TestCase
	def test_full_name
		person = Person.new("karmen","blake",99)
		assert_equal "karmen blake",person.full_name
	end

	def test_first_name
		person = Person.new("karmen","blake",99)
		assert_equal "karmen",person.first_name
	end

	def test_last_name
		person = Person.new("karmen","blake",99)
		assert_equal "blake",person.last_name
	end
end
