class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email
  validates_uniqueness_of :email
  validates_presence_of :password_digest

  has_many :favourites
  has_many :favourited_wods, through: :favourites, source: :wod
end
