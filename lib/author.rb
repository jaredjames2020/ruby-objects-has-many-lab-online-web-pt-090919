class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def add_post(post)
  
  
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title
  end
  
  def self.post_count
    Post.all.count
  end


end