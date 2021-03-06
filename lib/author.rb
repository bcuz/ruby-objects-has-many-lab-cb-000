class Author
  @@post_count = 0
  attr_accessor :name

  def initialize(name)
    @name = name
    @posts = []

  end

  def add_post(post)
    @posts << post
    @@post_count +=1
    post.author = self
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    @@post_count +=1
    post.author = self
  end

  def posts
    @posts
  end

  def self.post_count
    @@post_count
  end
end
