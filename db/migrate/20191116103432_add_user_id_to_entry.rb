class AddUserIdToEntry < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :user_id, :integer
  end
end
