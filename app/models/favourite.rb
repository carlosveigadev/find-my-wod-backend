class Favourite < ApplicationRecord
  belongs_to :wod
  belongs_to :user
end
