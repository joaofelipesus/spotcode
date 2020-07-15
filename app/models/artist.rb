class Artist < ApplicationRecord
  has_many :albuns
  validates_presence_of :name
  has_one_attached :photo
end
