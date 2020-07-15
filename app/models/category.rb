class Category < ApplicationRecord
  has_many :albums
  validates_presence_of :name
  has_one_attached :image

  def artists
    # Artist.joins(:albuns).where("albuns.id IN(?)", self.albuns.ids).distinct
    Artist.joins(:albums).where(albums: { id: self.albums.ids }).distinct
  end

  def songs
    # Song.joins(:album).where("albums.id IN(?)", self.albums.ids).distinct
    Song.joins(:album).where(songs: { id: self.albums.ids }).distinct
  end

end
