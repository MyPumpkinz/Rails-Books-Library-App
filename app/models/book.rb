class Book < ApplicationRecord
  has_many :downloads
  has_many :reviews
  belongs_to :user
  belongs_to :category

  has_one_attached :image
end
