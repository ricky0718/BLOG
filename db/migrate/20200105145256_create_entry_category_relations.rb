class CreateEntryCategoryRelations < ActiveRecord::Migration[5.0]
  def change
    create_table :entry_category_relations do |t|
      t.integer :entry_id, null: false, foreign_key: true
      t.integer :category_id, null: false, foreign_key: true
      t.timestamps
    end
  end
end
