class AddUserIdToTimeRecords < ActiveRecord::Migration[6.0]
  def change
    add_column :time_records, :user_id, :integer
    add_index :time_records, :user_id
  end
end
