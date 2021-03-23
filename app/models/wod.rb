class Wod < ApplicationRecord
  has_many :favourites
  has_many :athletes, through: :favourites, source: :user

  validates :title, :description, :image, presence: true

  validates :title, length: { minimum: 2, maximum: 255 }

end
