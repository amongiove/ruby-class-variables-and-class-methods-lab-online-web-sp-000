class Song

  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @@count += 1
    @genre = genre
    @@genres << @genre
    @artist = artist
    @@artists << @artist
    @name = name
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

  def genre_count
    genre_count = {}
    #for each genre in @genre, add key with value 1
    #if genre key already present, add +1 to value
    @@genres.each do |genre|
      if genre_count.has_key?("#{genre}")
        value += 1
      else
        genre_count[genre] = 1
      end
    end
  end

    def artist_count
      artist_count = {}
      @@artists.each do |key, value|
        if artist_count.has_key? key
          value += 1
        else
          artist_count[key] = 1
        end
      end
    end

end
