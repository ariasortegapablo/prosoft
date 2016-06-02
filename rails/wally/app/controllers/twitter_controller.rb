class TwitterController < ApplicationController

  # Necessary tokens for Single-user Authentication
  def main
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = "cVpmafwiiZkms9tEwl5zH****"
      config.consumer_secret = "EXCmQKKNDcUJy5DfxT9mRBorWK5gv6Q7j0oJnvrVcM6qWw****"
      config.access_token = "2516898678-4kqsjIPDNzIvx1o7oJ9AY4iayc6gvlRvUC7****"
      config.access_token_secret = "UNMs68XJjsBNfd2uK4VFE6MKK2hOvk6DraQ5466yh****"
    end


    # If the authenticated user has granted read/write permission to your application,
    # post an update
    # Params:
    # - tweet: tweet content
    client.update(tweet);
  end
end
