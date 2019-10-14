class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def import
    song_filenames = Dir["#{path}/**/*.mp3"]
    song_filenames.each{|filename| Song.new_by_filename(filename)}
  end

  def files
  end
end
