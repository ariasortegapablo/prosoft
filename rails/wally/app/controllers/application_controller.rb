class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery

#   def facebook_cookies
#     @facebook_cookies ||= Koala::Facebook::OAuth.new(app_id, app_secret).get_user_info_from_cookie(cookies)
#   end
#
# # app/controllers/foo_controller.rb
#   def index
#
#     @access_token = facebook_cookies['access_token']
#     @graph = Koala::Facebook::API.new(@access_token)
#
#   end

end
