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

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if genre_hash.has_key?"#{genre}"
        genre_hash[genre] += 1
      else
       genre_hash[genre] = 1
      end
    end
    genre_hash
  end

    def self.artist_count
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
