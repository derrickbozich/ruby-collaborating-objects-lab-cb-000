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
     puts "#{artist}: #{song}"
     new_song = self.new(song)
     new_song.artist_name = artist

     new_song

  end
  def artist_name=(name)
   self.artist = Artist.find_or_create_by_name(name)
   artist.add_song(self)
   artist.save
 end
end

"Michael Jackson - Black or White - Pop"
Song.new_by_filename("Michael Jackson - Black or White - Pop")
