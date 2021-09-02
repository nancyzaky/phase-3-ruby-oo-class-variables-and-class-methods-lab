require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres<<genre
    @@artists<<artist

  end

def self.count
  @@count
end

def self.genres
 @@genres.uniq
end


def self.artists
  @@artists.uniq
end



def self.genre_count
newHash ={}
@@genres.each do |genre|
newHash.has_key?(genre) ?
newHash["#{genre}"] +=1 : newHash["#{genre}"] = 1
end
newHash
end


def self.artist_count
newArtistHash = {}
@@artists.each do |artist|
  newArtistHash.has_key?(artist) ? newArtistHash["#{artist}"] +=1 : newArtistHash["#{artist}"] =1

end
newArtistHash
end
end

