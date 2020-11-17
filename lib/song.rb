class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.artist
    @song.artist = self
  end

  def self.new_by_filename(file_name)
    split_name = filename.split(" - ")
    self.new(split_name[1])
  end

end
