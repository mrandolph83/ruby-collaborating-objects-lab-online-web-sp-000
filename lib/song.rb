class Song
attr_accessor :name
attr_reader :artist

  def initialize(name)
    @name = name
  end

  def artist
    self.artist = self
  end

end
