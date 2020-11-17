class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.artist
    @song.artist = self
  end

  def self.new_by_filename(filename)
  # Given how the file names are written out (ex -
  # "Action Bronson - Larry Csonka - indie.mp3"), splitting
  # the name by the dashes "-", and turning the filename into
  # an array.
    split_name = filename.split(" - ")
  # With the new split_name array made, the next step is to pull
  # the song out of the array, which is split_name[1]
    self.new(split_name[1])
  # Pulling the artist from the filename, wich is split_name[0]
    artist = Artist.find_or_create_by_name(split_name[0])
    song.artist = artist
    artist.add_song(song)
    song
  end

end
