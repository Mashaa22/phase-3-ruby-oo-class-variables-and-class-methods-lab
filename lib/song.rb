class Song
    attr_accessor :name, :artist, :genre
  
    @@count = 0
    @@genres = Hash.new(0)
    @@artists = Hash.new(0)
  
    def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
  
      @@count += 1
      @@genres[genre] += 1
      @@artists[artist] += 1
    end
  
    def self.count
      @@count
    end
  
    def self.genres
      @@genres.keys
    end
  
    def self.artists
      @@artists.keys
    end
  
    def self.genre_count
      @@genres
    end
  
    def self.artist_count
      @@artists
    end
  end

  #Tests 

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

ninety_nine_problems.name
# "99 Problems"

ninety_nine_problems.artist
# "Jay-Z"

ninety_nine_problems.genre
#  "rap"

Song.count
#  1

Song.genres
# ["rap"]

Song.artists
# ["Jay-Z"]

Song.genre_count
# {"rap" 1}

Song.artist_count
# {"Jay-Z" 1}



