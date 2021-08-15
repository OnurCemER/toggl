class TimeRecord < ApplicationRecord
    scope :filter_by_started_time, -> (started_time) { where started_time: started_time }
    scope :filter_by_finished_time, -> (finished_time) { where finished_time: finished_time }
end
