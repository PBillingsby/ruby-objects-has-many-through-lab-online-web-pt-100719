class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def new_song(name, artist, genre)
    song = Song.new(name)
    song.genre = genre
    song.artist = artist
  end
end