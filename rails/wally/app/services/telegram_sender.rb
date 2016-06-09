require 'telegram/bot'
class TelegramSender

  @@telegram_token = Rails.application.secrets.telegram_token

  # Sends an only-text telegram message to a recipient
  # Params:
  # - chat_id: the chat id of the chat room with the recipient
  # - message: the telegram message content
  def self.send_text_message_to(chat_id, message)
    Telegram::Bot::Client.run(@@telegram_token) do |bot|
      bot.api.send_message(chat_id: chat_id , text: message)
    end
  end

  # Sends an photo or image telegram message to a recipient with a text message included
  # Params:
  # - chat_id: the chat id of the chat room with the recipient
  # - image_url the image url to the image directory on the server
  # - message: the telegram message content
  def self.send_photo_message_to(chat_id, image_url, message)
    Telegram::Bot::Client.run(@@telegram_token) do |bot|
      bot.api.send_photo(chat_id: chat_id, photo: Faraday::UploadIO.new(image_url, 'image/jpeg'), caption: message)
    end
  end

  # Sends an only-text telegram message to a list of recipients
  # Params:
  # - chat_ids: the chat ids of the chat rooms with the recipients
  # - message: the telegram message content
  def self.send_text_message_to_many(chat_ids, message)
    Telegram::Bot::Client.run(@@telegram_token) do |bot|

      chat_ids each do |chat_id|

        bot.api.send_message(chat_id: chat_id , text: message)
      end
    end
  end

  # Sends an photo or image telegram message to a list of recipients (array) with a text message included
  # Params:
  # - chat_ids: the chat ids of the chat rooms with the recipients
  # - image_url the image url to the image directory on the server
  # - message: the telegram message content
  def self.send_photo_message_to_many(chat_ids, image_url, message)
    Telegram::Bot::Client.run(@@telegram_token) do |bot|
      chat_ids each do |chat_id|
        bot.api.send_photo(chat_id: chat_id, photo: Faraday::UploadIO.new(image_url, 'image/jpeg'), caption: message)
      end
    end
  end

  end