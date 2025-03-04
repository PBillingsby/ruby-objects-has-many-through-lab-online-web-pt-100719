class Artist
  attr_accessor :name, :genres, :artist
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    @songs << name
  end

  def self.all
    @@all
  end
  def new_song(name, genre)
		self.songs << name
		self.genre = genre
  end
  def songs
    Song.all.select {|song| song.artist == self}
  end
end