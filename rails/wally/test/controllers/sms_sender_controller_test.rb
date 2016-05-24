require 'test_helper'

class SmsSenderControllerTest < ActionController::TestCase
  test "should get sendSMS" do
    get :sendSMS
    assert_response :success
  end

end
