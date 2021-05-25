require "test_helper"

class EventPicuresControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get event_picures_create_url
    assert_response :success
  end
end
