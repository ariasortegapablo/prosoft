class FbWallPostController < ApplicationController

  @@access_token = Rails.application.secrets.facebook_access_token
  @@app_secret = Rails.application.secrets.facebook_secret_key

  def post_att(message, attachment)

  @graph = Koala::Facebook::API.new(@@access_token, @@app_secret)
  @graph.put_wall_post(message, attachment)

  end

  def post

    @graph = Koala::Facebook::API.new(@@access_token, @@app_secret)
    @graph.put_wall_post('hola2')

  end


end
