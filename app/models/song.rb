class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    Song.all.collect{|song|song.genre.name}.uniq.join()
  end

  def drake_made_this
    self.artist=Artist.create(name:"Drake")
  
    # when this method is called it should assign the song's artist to Drake
  end
end