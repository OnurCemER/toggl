class CreateTimeRecords < ActiveRecord::Migration[6.0]
  def change
    create_table :time_records do |t|
      t.string :comment
      t.string :time_type
      t.time :started_time
      t.time :finished_time

      t.timestamps
    end
  end
end