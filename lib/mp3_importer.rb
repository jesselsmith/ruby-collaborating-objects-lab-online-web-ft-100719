class MP3Importer
  attr_accessor :path

  def intialize(path)
    self.path = path
  end

  def import
    Dir["#{path}/**/*.mp3]

end
