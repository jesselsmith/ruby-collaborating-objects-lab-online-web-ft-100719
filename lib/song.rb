class Song
  attr_accessor :name, :artist, :genre
  @@all = []
  def initialize(name)
    self.name = name
    self.save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    file_data = filename.split(/ - |.mp3/)
    new_song = Song.new(file_data[1])
    artist_name = file_data[0]
    new_song.genre = file_data[2]
    new_song
  end

  def artist_name= (artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
  end


end
