class CreateWods < ActiveRecord::Migration[6.0]
  def change
    create_table :wods do |t|
      t.references :user_id, null: false, foreign_key: true
      t.varchar :title, null: false
      t.text :description, null: false
      t.text :image, null: false

      t.timestamps
    end
  end
end
