class Artist
  attr_accessor :name
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

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
  end

  def add_song_by_name(song_name)
    new_song = Song.new(song_name)
    add_song(new_song)
  end
end
