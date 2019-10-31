class Artist
  attr_accessor :name, :genres
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
    self.songs << name
  end

  def self.all
    @@all
  end

  def songs
    @songs
  end
end