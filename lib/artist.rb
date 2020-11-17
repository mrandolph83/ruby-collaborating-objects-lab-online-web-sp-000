require 'pry'
class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    save
  end

  def add_song(song)
    @songs << song
  end

  def self.all
    @@all
  end

  def save
    @@all << self
  end

  def self.find_or_create_by_name(name)
# Iterates through the @@all class variable to detect whether that name
    self.all.detect {|artist| artist.name == name } || Artist.new(name)

  end

end
