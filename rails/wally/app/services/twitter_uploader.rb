class TwitterUploader

  # If the authenticated user has granted read/write permission to your application,
  # post an update
  # Params:
  # - tweet: tweet content
  def tweet_message(message)

    client = initClient()
    client.update(message)
  end

  # If the authenticated user has granted read/write permission to your application,
  # post an update with an image.
  # Params:
  # - tweet: tweet content
  # - path: path to an image
  def tweet_media_message(message, media_url)

    client = initClient()
    client.update_with_media(message, File.new(media_url))

  end

  # Initialize and return the client with the required tokens and keys
  def initClient()

    client = Twitter::REST::Client.new do |config|
      config.consumer_key = Rails.application.secrets.twitter_consumer_key
      config.consumer_secret = Rails.application.secrets.twitter_consumer_secret
      config.access_token = Rails.application.secrets.twitter_access_token
      config.access_token_secret = Rails.application.secrets.twitter_access_token_secret
    end

    return client
  end

end