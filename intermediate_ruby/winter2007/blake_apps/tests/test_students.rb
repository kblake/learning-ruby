require 'test/unit'
require File.join(File.dirname(__FILE__),'..','models','students')
require File.join(File.dirname(__FILE__),'..','models','person')

class TestStudents < Test::Unit::TestCase
	def setup
		@cis111 = Students.new
		20.times do
			i = rand(99)
			@cis111.add_student(Person.new("first name#{i}","last name#{i}",(3 + i)))
		end
		@p = Person.new("john","doe",99)
	end
	
	def test_empty
		assert_equal false,@cis111.empty?
	end

	def test_roster_size
		assert_equal 20,@cis111.roster_size
	end

	def test_add_student
		initial_roster_size = @cis111.roster_size
		test_roster_size
		@cis111.add_student(@p)
		assert @cis111.roster_size >  initial_roster_size
		assert_equal @p.first_name, @cis111.get_last_student.first_name
		assert_equal @p.last_name, @cis111.get_last_student.last_name
		assert_equal @p.age, @cis111.get_last_student.age
		assert_equal @cis111.roster_size,initial_roster_size + 1
	end

	def test_remove_student
		initial_roster_size = @cis111.roster_size
		@cis111.delete_student(5)
		assert @cis111.roster_size < initial_roster_size
		assert_equal @cis111.roster_size,initial_roster_size - 1
	end

	def test_get_first_student
		@cis111.add_student_to_beginning(@p)
		assert_equal @p.first_name, @cis111.get_first_student.first_name
		assert_equal @p.last_name, @cis111.get_first_student.last_name
		assert_equal @p.age, @cis111.get_first_student.age
	end

	def test_sort_by_last_name
		original = @cis111.students
		sorted = @cis111.sort_by_last_name
		assert_not_equal(original, sorted)
		for index in 0..sorted.length - 1
			assert_equal true,sorted[index].last_name <= sorted[index + 1].last_name if index < sorted.length-1
		end
	end
end











