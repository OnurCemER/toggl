class AddCategoryIdToTimeRecord < ActiveRecord::Migration[6.0]
  def change
    add_column :time_records, :category_id, :integer
    add_index :time_records, :category_id
  end
end
