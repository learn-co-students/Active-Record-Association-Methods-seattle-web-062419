class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    array=Song.all.select do |song|
      song.genre==self
    end
    array.size
    # return the number of songs in a genre
  end

  def artist_count
    array =self.songs.collect do |song|
      song.artist
    end
    array.uniq.size
    # return the number of artists associated with the genre
  end

  def all_artist_names
    array=self.songs.collect do |song|
      song.artist.name
    end
    array.uniq
    # return an array of strings containing every musician's name
  end
end
