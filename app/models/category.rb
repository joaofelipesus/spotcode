class Category < ApplicationRecord
  has_many :albuns
  validates_presence_of :name
  has_one_attached :image
end