module Commentable
  def initialize
    @comments = []
  end
  def add_comment(comment)
    @comments << comment
  end
  alias :<< :add_comment

  def to_s
    output = "Course Comments:\n-------------\n"
    @comments.inject(output){|output, comment| output << "#{comment}\n"}
  end
end

class CourseEvaluation
  include Commentable
  attr_accessor :title,:teacher
  def initialize(title,teacher)
    super()
    @title,@teacher = title, teacher
  end
  def to_s
    output = "Course Title: #{@title}\n"
    output << "Teacher: #{@teacher}\n"
    output << super
  end
end

cis999 = CourseEvaluation.new("Beginning Geekness","Joe")
cis999.add_comment("it was fun")
cis999.add_comment("it was boring")
cis999 << "could have been easier"
puts cis999

class Product
  include Commentable
  attr_accessor :name,:price
  def initialize(name,price)
    super()
    @name,@price = name, price
  end
  def to_s
    output = "Product Name: #{@name}\n"
    output << "Price: $#{@price}\n"
    output << super
  end
end
puts
puts
music_player = Product.new("MP3 Player","299.99")
music_player.add_comment("works great!")
music_player.add_comment("wish it had more storage")
music_player << "does it support ogg"
puts music_player
