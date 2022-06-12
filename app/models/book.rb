class Book < ApplicationRecord
  has_many :downloads
  belongs_to :category

  has_one_attached :image
end
