class Song < ActiveRecord::Base
  # add associations here
  belongs_to :artist
  belongs_to :genre

  def song_artist_name=(name)
    self.artist.name = Artist.find_or_create_by(name: name)
  end

  def song_artist_name 
    self.artist ? self.artist.name : nil
  end
end
