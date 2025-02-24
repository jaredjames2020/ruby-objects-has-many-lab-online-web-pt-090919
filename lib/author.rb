class Author

  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end
  
  def posts
    Post.all.select {|post| post.author == self}
  end
  
  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(post_title)
    post_title = Post.new(post_title)
    post_title.author = self
  end
  
  def self.post_count
    Post.all.length
  end


end