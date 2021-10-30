require "test_helper"

class WarriorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get warriors_index_url
    assert_response :success
  end
end
