class AddEntrycategoryToEntry < ActiveRecord::Migration[5.0]
  def change
    add_column :entries, :entrycategory_id, :integer
  end
end
