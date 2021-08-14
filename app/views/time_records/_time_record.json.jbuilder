json.extract! time_record, :id, :comment, :time_type, :started_time, :finished_time, :created_at, :updated_at
json.url time_record_url(time_record, format: :json)
