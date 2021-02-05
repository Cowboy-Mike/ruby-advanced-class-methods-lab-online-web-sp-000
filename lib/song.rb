class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end
  
  def self.create
    song = self.new 
    song.name = name 
    @@all << song 
    song
  end
  
  def self.create_by_name(song)
    song = song.new(song)
  end
end
