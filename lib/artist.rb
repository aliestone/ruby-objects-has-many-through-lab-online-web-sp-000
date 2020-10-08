
class Artist

attr_accessor :name, :artist, :genre

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name,genre)
    @name = name
    @genre = genre
  end

  def songs(name)
    @@all.detect{|a| a.name == name}
  end

end
