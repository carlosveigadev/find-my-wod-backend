class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|
      t.int :user_id, null: false, foreign_key: true
      t.int :wod_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
