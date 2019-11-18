class AddClomunToLikes < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :likes_count, :integer
  end
end
