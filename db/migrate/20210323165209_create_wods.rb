class CreateWods < ActiveRecord::Migration[6.0]
  def change
    create_table :wods do |t|
      t.int :user_id
      t.varchar :title
      t.text :description
      t.text :image

      t.timestamps
    end
  end
end
