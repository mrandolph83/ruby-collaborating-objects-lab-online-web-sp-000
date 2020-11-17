class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.artist
    @song.artist = self
  end

  def self.all
    @@all
  end

end
