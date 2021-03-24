class User < ApplicationRecord
  has_secure_password

  validates_presence_of :email, :password_digest
  validates_uniqueness_of :email 

  has_many :favourites
  has_many :favourited_wods, through: :favourites, source: :wod
end
