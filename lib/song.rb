class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @@count =+ 1 
    @@genres << genre
    @@artists << artist
  end
  
  def self.count
    @@count
  end 
  
  def self.genres 
    temp_array_1 = []
    @@genres.each do |unique|
      if !(temp_array_1.include? (unique))
        temp_array_1 << unique
      end 
    end 
    temp_array_1
  end
  
  def self.artists
    temp_array_2 = []
  end 
  
end 
    if !(@@genres.include? (genre))
    if !(@@artists.include? (artist))