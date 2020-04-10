class Song 
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
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
    @@artists.each do |unique|
      if !(temp_array_2.include? (unique))
        temp_array_2 << unique
      end 
    end 
    temp_array_2
  end 
  
  def self.genre_count
    hash_1 = {}
    temp_array_1 = []
    @@genres.each do |unique|
      if !(temp_array_1.include? (unique))
        temp_array_1 << unique
      end 
    end
    @@genres.each do |unique, number|
      if (temp_array_1.include? (unique))
        number += 1 
      end
      hash_1 ["#{unique}"] = number
    end 
    hash_1
  end 
  
  def self.artist_count
    
  end 
  
end 