class Song

  attr_accessor :name, :artist, :genre, :count

  @count = 0
  @genres = []
  @artists = []

  def initialize
    count = @count += 1
    @genre = genre
    @artist = artist
    @name = name
  end

  def count
    count
  end

  def genres
    @genres << genre
    @genres.uniq!
  end

  def artists
    @artists << artist
    @artists.uniq!
  end

  def genre_count
    genre_count = {}
    #for each genre in @genre, add key with value 1
    #if genre key already present, add +1 to value
    @genres.each do |key, value|
      if genre_count.has_key? key
        value += 1
      else
        genre_count[key] = 1
      end
    end
  end

    def artist_count
      artist_count = {}
      @artists.each do |key, value|
        if artist_count.has_key? key
          value += 1
        else
          artist_count[key] = 1
        end
      end
    end

end
