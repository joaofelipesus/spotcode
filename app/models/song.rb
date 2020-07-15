class Song < ApplicationRecord
  belongs_to :album
  validates_presence_of :title
  has_one_attached :file
end
