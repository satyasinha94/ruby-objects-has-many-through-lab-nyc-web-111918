require 'pry'
class Artist
  attr_reader :name

  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    #binding.pry
  end
  #binding.pry

  def songs
    Song.all.select {|song| song.artist == self}
    #binding.pry
  end

  def genres
    songs.map {|song| song.genre}
    end
  end
