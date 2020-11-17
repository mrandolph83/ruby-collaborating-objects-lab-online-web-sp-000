class Song
attr_accessor :name
attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist
    @song.artist = self
  end

end
