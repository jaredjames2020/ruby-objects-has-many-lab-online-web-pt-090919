class Song
  
  attr_accessor :name

  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def artist
    @artist = Artist.name
  end
  
  def artist_name
    @artist
  end

end