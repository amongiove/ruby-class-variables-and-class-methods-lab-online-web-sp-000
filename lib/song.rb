class Song

  attr_accessor :name, :artist, :genre

  @count = 0
  @genres = []
  @artists = []

  def initialize
    @count += 1 = count
    @genres << genre
    @artists << artist
  end

  def count
    count
  end

  def genres
    @genres.uniq!
  end

  def artists
    @artist.uniq!
  end


end
