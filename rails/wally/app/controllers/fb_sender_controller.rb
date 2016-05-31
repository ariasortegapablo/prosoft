class FbSenderController < ApplicationController


  def sender

  app_id = '1694859610767598'
  access_token = 'EAAYFd0ELQO4BAEpFjZBhr0t0d3UyPIWR7UxeKRVOaZBNDFBT1S0ZCgA5vHXQnZAJJrCVEx7WFcjgA7n4vyAnmXQsuGnIkxqHD4X5g2JcTbp5g2NFfKZBB5wfEUCv3W5d1YpAop0lOYM4FlNvif2S8ltr2bdFWvR3VCGDh9SZB6hQZDZD'
  app_secret = 'a86431a4660b427582c5ce0e119c46e7'
  sender_uid = "1694859610767598"
  receiver_uid = "10154665006441490"


  require 'facebook/messenger'

  include Facebook::Messenger

  Facebook::Messenger.configure do |config|
    config.access_token = access_token
    config.app_secret = app_secret
  end

  require 'facebook/messenger'

  include Facebook::Messenger

  Bot.on :message do |message|
    #message.id          # => 'mid.1457764197618:41d102a3e1ae206a38'
    #message.sender      # => { 'id' => '1008372609250235' }
    #message.seq         # => 73
    #message.sent_at     # => 2016-04-22 21:30:36 +0200
    #message.text        # => 'Hello, bot!'
    #message.attachments # => [ { 'type' => 'image', 'payload' => { 'url' => 'https://www.example.com/1.jpg' } } ]

    Bot.deliver(
      recipient: {
          id: '10154665006441490'
      },
      message: {
          text: 'Human?'
      }
  )

  end
  end


end