require_relative 'song'
require_relative 'artist'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    self.path = path
  end

  def import
    song_filenames = self.files
    song_filenames.each{|filename| Song.new_by_filename(filename)}
  end

  def files
    new_files = Dir["#{path}/**/*.mp3"]
    new_files.map{|filename| filename.split("/").last}
  end
end


test_music_path = "./spec/fixtures/mp3s"
music_importer = MP3Importer.new(test_music_path)
puts music_importer.import
puts Song.all
