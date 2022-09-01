require "pry"
class Song

    attr_accessor :name, :artist, :genre
    @@count = 0
    @@genres = []
    @@artists = []

   def initialize name, artist, genre
    @name = name
    @artist = artist
    @genre = genre
    @@count +=1
    @@genres << genre
    @@artists << artist
    end
    # binding.pry

    def self.count
        @@count
    end

    def self.genres
        @@genres
        # @@genres.tally
        # binding.pry
        @@genres.uniq
    end

    # def self.artist_count
    #     self.artist
    # end
    def self.artists
        @@artists
        # @@artists.tally
        @@artists.uniq
    end
    song1 = Song.new("name1", "artist1", "genre1")
    song2 = Song.new("name2", "artist1", "genre2")
    song3 = Song.new("name2", "artist1", "genre1")
    song4 = Song.new("name2", "artist3", "genre3")
    # binding.pry
end

