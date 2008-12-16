module Featureable
  attr_accessor :features
  def initialize
    setup_features
  end
  def setup_features
    @features = []
  end
  def add_feature(feature)
    @features << feature
  end
end

module Commentable
  attr_accessor :comments
  def initialize
    setup_comments
  end
  def setup_comments
    @comments = []
  end
  def add_comment(comment)
    @comments << comment
  end
end
