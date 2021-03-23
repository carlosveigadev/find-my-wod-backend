class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|
      t.int :user_id
      t.int :wod_id

      t.timestamps
    end
  end
end
