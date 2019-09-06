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
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end
  
  def artist
    self.songs.select do |song|
      song.artist
    end
  end  
  
end