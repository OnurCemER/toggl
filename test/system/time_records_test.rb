require "application_system_test_case"

class TimeRecordsTest < ApplicationSystemTestCase
  setup do
    @time_record = time_records(:one)
  end

  test "visiting the index" do
    visit time_records_url
    assert_selector "h1", text: "Time Records"
  end

  test "creating a Time record" do
    visit time_records_url
    click_on "New Time Record"

    fill_in "Comment", with: @time_record.comment
    fill_in "Finished time", with: @time_record.finished_time
    fill_in "Started time", with: @time_record.started_time
    fill_in "Time type", with: @time_record.time_type
    click_on "Create Time record"

    assert_text "Time record was successfully created"
    click_on "Back"
  end

  test "updating a Time record" do
    visit time_records_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @time_record.comment
    fill_in "Finished time", with: @time_record.finished_time
    fill_in "Started time", with: @time_record.started_time
    fill_in "Time type", with: @time_record.time_type
    click_on "Update Time record"

    assert_text "Time record was successfully updated"
    click_on "Back"
  end

  test "destroying a Time record" do
    visit time_records_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Time record was successfully destroyed"
  end
end
