require 'modules_features_comments'

class Gadget
  include Featureable,Commentable
  attr_accessor :name
  def initialize(name)
    @name = name
    setup_features
    setup_comments
  end
end

class CourseEvaluation
  include Commentable
  attr_accessor :title,:id,:credits
  def initialize(title,id,credits)
    setup_comments
    @title,@id,@credits = title, id, credits
  end
end

g = Gadget.new("mp3 player")
puts g.name
g.add_feature("slick")
g.add_feature("ipod")
g.add_feature("plays music")
p g.features
g.add_comment("cool product!")
g.add_comment("I'm recommending this...")
g.add_comment("ok, needs work")
g.add_comment("low battery life")
g.add_comment("this sucks!")
p g.comments

puts

c = CourseEvaluation.new("Beg. Java","CIS 282",5)
puts c.title
c.add_comment("boring")
c.add_comment("too easy")
c.add_comment("too hard")
c.add_comment("not enough tests")
c.add_comment("not enough dew")
c.add_comment("teacher's got major b.o.")
puts c.title
p c.comments
