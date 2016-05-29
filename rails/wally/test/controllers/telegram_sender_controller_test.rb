require 'test_helper'

class TelegramSenderControllerTest < ActionController::TestCase
  test "should get sendMessageTo," do
    get :sendMessageTo,
    assert_response :success
  end

  test "should get sendMessageToMany" do
    get :sendMessageToMany
    assert_response :success
  end

end
