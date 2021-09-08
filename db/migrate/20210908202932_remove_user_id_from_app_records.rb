class RemoveUserIdFromAppRecords < ActiveRecord::Migration[6.0]
  def change
    remove_index :time_records, :user_id
    remove_column :time_records, :user_id, :integer
  end
end
