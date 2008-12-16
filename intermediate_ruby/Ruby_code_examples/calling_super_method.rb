class Blah
	def run
		@x = "blah"
		@y = "kdkdk"
	end
	def to_s
	 "#{@x} and #{@y}"
	end
end

class Lala < Blah
  attr_reader :lala
  def run
    super
    @lala = "lala"
  end
  def to_s
    super + " #{@lala}"
  end
end

l = Lala.new
l.run
puts l