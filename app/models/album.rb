class Album < ApplicationRecord
  belongs_to :category
  belongs_to :artist
  has_many :songs
  validates_presence_of :title, :date
  has_one_attached :cover
end
