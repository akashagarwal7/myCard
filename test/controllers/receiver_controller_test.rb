require 'test_helper'

class ReceiverControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get receiver_home_url
    assert_response :success
  end

end
