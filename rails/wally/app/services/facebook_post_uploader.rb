class FacebookPostUploader

  @@access_token = Rails.application.secrets.facebook_access_token
  @@app_secret = Rails.application.secrets.facebook_secret_key

  def self.post_with_attachment(message, attachment)

    @graph = Koala::Facebook::API.new(@@access_token, @@app_secret)
    @graph.put_wall_post(message, attachment)

  end

  def self.post_message(message)

    @graph = Koala::Facebook::API.new(@@access_token, @@app_secret)
    @graph.put_wall_post(message)

  end

end