class Post

  attr_accessor :title, :author

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end
  
  def posts
    Author.all.select {|post| post.author == self}
  end
  
  def self.all
    @all
  end
  
  def author_name
    self.author.name
  end
  
end