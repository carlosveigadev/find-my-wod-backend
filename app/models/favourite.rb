class Favourite < ApplicationRecord
  belongs_to :wod
  belongs_to :user

  validates_uniqueness_of :wod_id, :scope => [:user_id]


end
