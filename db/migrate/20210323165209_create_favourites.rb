class CreateFavourites < ActiveRecord::Migration[6.0]
  def change
    create_table :favourites do |t|
      t.references :user, null: false, foreign_key: true
      t.references :wod, null: false, foreign_key: true

      t.timestamps
    end

    add_index :favourites, [:user_id, :wod_id]
  end
end
