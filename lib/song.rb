class Song
attr_accessor :name
attr_reader :artist

  def initialize(name)
    @name = name
  end

  def self.artist
    @song.artist = self
  end

end
