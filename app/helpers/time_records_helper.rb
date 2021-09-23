module TimeRecordsHelper
  def time_duration(time_record)
    seconds_diff = (time_record.started_time - time_record.finished_time).abs
    Time.at(seconds_diff).utc.strftime "%H:%M:%S"
  end
end
