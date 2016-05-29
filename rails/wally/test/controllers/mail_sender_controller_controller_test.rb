require 'test_helper'

class MailSenderControllerControllerTest < ActionController::TestCase
  test "should get sendMail" do
    get :sendMail
    assert_response :success
  end

end
