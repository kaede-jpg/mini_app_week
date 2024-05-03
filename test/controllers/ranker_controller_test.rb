require "test_helper"

class RankerControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get ranker_create_url
    assert_response :success
  end
end
