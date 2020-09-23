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
    genre_songs = {}
    #for each genre in @genre, add key with value 1
    #if genre key already present, add +1 to value
    @@genres.each do |genre|
      if genre_songs.has_key?("#{genre}")
        value += 1
      else
        genre_songs[genre] = 1
      end
    end
    genre_songs
  end

    def artist_count
      artist_songs = {}
      @@artists.each do |artist|
        if artist_songs.has_key?("#{artist}")
          value += 1
        else
          artist_songs[artist] = 1
        end
      end
      artist_songs
    end

end
