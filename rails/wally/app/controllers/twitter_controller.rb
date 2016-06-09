class TwitterController < ApplicationController

  # Necessary tokens for Single-user Authentication
  def tweet
    TwitterUploader.tweet_message('Hola! -Wally')
  end
  helper_method tweet

  def tweetWithMedia

  end
  helper_method tweetWithMedia

end
