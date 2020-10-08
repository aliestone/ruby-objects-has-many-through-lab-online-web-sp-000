
#rspec ./spec/01_artist_spec.rb:7 # Artist #name has a name
#rspec ./spec/01_artist_spec.rb:15 # Artist .all knows about all artist instances
#rspec ./spec/01_artist_spec.rb:25 # Artist #songs returns all songs associated with this Artist
#rspec ./spec/01_artist_spec.rb:39 # Artist #new_song given a name and genre, creates a new song associated with that artist
#rspec ./spec/01_artist_spec.rb:52 # Artist #genres has many genres, through songs


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

  def songs(artist)
    artist.songs(artist)
  end

  def new_song(name, genre)
    Song.new(self, name, genre)
  end

end
