class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def name=(name)
    @name = name
  end

  # def artist=(artist)
  #   self.artist = artist
  # end

  def self.new_by_filename(filename)
    # song = self.new(filename.split(" - ")[1])
    # song.artist = filename.split(" - ")[0]
    # song

     artist, song = filename.split(" - ")
     new_song = self.new(song)
     new_song.artist = artist
     new_song

  end
end

"Michael Jackson - Black or White - Pop"
Song.new_by_filename("Michael Jackson - Black or White - Pop")
