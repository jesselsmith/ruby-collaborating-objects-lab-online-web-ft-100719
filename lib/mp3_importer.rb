class MP3Importer
  attr_accessor :path

  def intialize(path)
    self.path = path
  end

  def import
    song_filenames = Dir["#{path}/**/*.mp3"]
    song_filenames.each{|filename| Song.new_by_filename(filename)}
  end

  def files
  end
end
