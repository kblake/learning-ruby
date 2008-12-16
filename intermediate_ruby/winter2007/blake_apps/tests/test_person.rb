require File.join(File.dirname(__FILE__),'..','models','person')
require 'test/unit'

class TestPerson < Test::Unit::TestCase
	FIRST_NAME, LAST_NAME, AGE = "Karmen","Blake",99
	def setup
		@person = Person.new(FIRST_NAME, LAST_NAME, AGE)
		
	end
	def test_full_name
		assert_equal FIRST_NAME + " " + LAST_NAME,@person.full_name
	end

	def test_first_name
		assert_equal FIRST_NAME,@person.first_name
	end

	def test_last_name
		assert_equal LAST_NAME,@person.last_name
	end

	def test_weirdness
		assert_equal FIRST_NAME[0..2],@person.weirdness
	end

	def test_update_first_name
		test_first_name
		@person.first_name = "john"
		assert_equal "john",@person.first_name
	end

	def test_to_string
		assert_equal "#{FIRST_NAME} - #{LAST_NAME} - #{AGE}",@person.to_s
	end

	def test_comparison
		p1 = Person.new("John","Doe",22)
		p2 = Person.new("Jane","Doe",21)
		p3 = Person.new("Blah","Doe",22)
		assert_equal false,p1 < p2
		assert_equal true,p1 > p2
		assert_equal false, p1 == p2
		assert_equal true, p1 != p2
		assert_equal 1,p1<=>p2
		assert_equal -1, p2<=>p1
		assert_equal 0, p1<=>p1
		assert_equal 0,p1<=>p3
	end
end





