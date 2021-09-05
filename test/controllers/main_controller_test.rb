require 'test_helper'

class MainControllerTest < ActionDispatch::IntegrationTest
  test "should get hello" do
    get main_hello_url
    assert_response :success
  end

end
