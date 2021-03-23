class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|
      t.references :user_id, null: false, foreign_key: true
      t.references :wod_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
