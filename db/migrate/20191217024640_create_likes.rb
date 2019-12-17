class CreateLikes < ActiveRecord::Migration[5.0]
  def change
    create_table :likes do |t|
      t.integer :user_id, null: false
      t.integer :entry_id, null: false

      t.timestamps
      t.index :user_id
      t.index :entry_id
      t.index [:user_id, :entry_id], unique: true
    end
  end
end
