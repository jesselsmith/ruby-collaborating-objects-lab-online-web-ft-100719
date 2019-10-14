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



end
