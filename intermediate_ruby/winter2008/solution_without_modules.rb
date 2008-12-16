class CourseEvaluation
  attr_accessor :title,:teacher
  def initialize(title,teacher)
    @title,@teacher = title, teacher
    @comments = []
  end
  def add_comment(comment)
    @comments << comment
  end
  alias :<< :add_comment

  def output_comments
    output = "Course Comments:\n-------------\n"
    @comments.inject(output){|output, comment| output << "#{comment}\n"}
  end

  def to_s
    output = "Course Title: #{@title}\n"
    output << "Teacher: #{@teacher}\n"
    output << output_comments
  end
end

cis999 = CourseEvaluation.new("Beginning Geekness","Joe")
cis999.add_comment("it was fun")
cis999.add_comment("it was boring")
cis999 << "could have been easier"
puts cis999

class Product
  attr_accessor :name,:price
  def initialize(name,price)
    @name,@price = name, price
    @comments =[]
  end
  def add_comment(comment)
    @comments << comment
  end
  alias :<< :add_comment
  def output_comments
    output = "Course Comments:\n-------------\n"
    @comments.inject(output){|output, comment| output << "#{comment}\n"}
  end
  def to_s
    output = "Product Name: #{@name}\n"
    output << "Price: $#{@price}\n"
    output << output_comments
  end
end
puts 
puts
music_player = Product.new("MP3 Player","299.99")
music_player.add_comment("works great!")
music_player.add_comment("wish it had more storage")
music_player << "does it support ogg"
puts music_player