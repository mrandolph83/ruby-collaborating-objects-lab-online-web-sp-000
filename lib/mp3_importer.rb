require 'pry'

class MP3Importer

attr_accessor :path
# Path is your file path, in this case taking you
# back to fixtures/mp3s

def initialize(filename)
  @path = filename
end

def files
# Dir is a class that directory streams representing
# directories in the underlying file system. They provide
# a variety of ways to list directories and their contents.
  @files = Dir.entries(@path)
  # puts @files
# Puts is commented out above. Running puts made a list of all the
# entries being called on. This allowed us to see that there where
# the 4 mp3 files as well as strange files reading as "." and "..".
# Fixed with delete_if enumerator below.
  @files.delete_if {|file| file == "." || file == ".."}
end
# binding.pry


end
