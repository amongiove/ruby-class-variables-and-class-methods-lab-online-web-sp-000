class Song

  attr_accessor :name, :artist, :genre

  @count = 0
  @genres = []
  @artists = []

  def initialize
    @count += 1 = count
  end

  def count
    count
  end

  def genres
    @genres << genre
    @genres.uniq!
  end

  def artists
    @artists << artists
    @artist.uniq!
  end


end
