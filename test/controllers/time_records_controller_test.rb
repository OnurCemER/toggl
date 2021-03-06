require 'test_helper'

class TimeRecordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @time_record = time_records(:one)
  end

  test "should get index" do
    get time_records_url
    assert_response :success
  end

  test "should get new" do
    get new_time_record_url
    assert_response :success
  end

  test "should create time_record" do
    assert_difference('TimeRecord.count') do
      post time_records_url, params: { time_record: { comment: @time_record.comment, finished_time: @time_record.finished_time, started_time: @time_record.started_time, time_type: @time_record.time_type } }
    end

    assert_redirected_to time_record_url(TimeRecord.last)
  end

  test "should show time_record" do
    get time_record_url(@time_record)
    assert_response :success
  end

  test "should get edit" do
    get edit_time_record_url(@time_record)
    assert_response :success
  end

  test "should update time_record" do
    patch time_record_url(@time_record), params: { time_record: { comment: @time_record.comment, finished_time: @time_record.finished_time, started_time: @time_record.started_time, time_type: @time_record.time_type } }
    assert_redirected_to time_record_url(@time_record)
  end

  test "should destroy time_record" do
    assert_difference('TimeRecord.count', -1) do
      delete time_record_url(@time_record)
    end

    assert_redirected_to time_records_url
  end
end
