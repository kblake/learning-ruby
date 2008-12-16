class Die
  def roll
    rand(6) + 1
  end
end

class Dice
  def initialize
    @die1 = Die.new
    @die2 = Die.new
  end

  def roll
    @die1.roll + @die2.roll
  end

  #I don't like the nils here but this works for now.
  #if anyone can clean this up, go for it :)
  def build_histogram(number)
    @histogram = [nil,nil,0,0,0,0,0,0,0,0,0,0,0]
    number.times { @histogram[roll] += 1 }
  end

  def print_histogram
    if @histogram
      for index in 2..12
        print "#{index}\t| "
        print "*" * @histogram[index]
        print "\n"
      end
    else
      puts "No histogram to print"
    end
  end
end

d = Dice.new
d.build_histogram(100)
d.print_histogram
puts
d.build_histogram(400)
d.print_histogram