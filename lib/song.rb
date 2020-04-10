class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count =+ 1 
    if !(@@genres.include? (genre))
      @@genres << genre
     if !(@@artists.include? (artist))
      @@artists << artist
    end
  end
  
  def self.count
    @@count
  end 
  
  def self.genres 
    @@genres  
  end
  
  def self.artists
    @@artists
  end 
  
end 