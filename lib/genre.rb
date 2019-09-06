class Genre
  attr_accessor :name
  
  @@all = []
  
  def intialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def artist
    Song,
  end
  
  
end