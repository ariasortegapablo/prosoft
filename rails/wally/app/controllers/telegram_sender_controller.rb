require 'telegram/bot'

class TelegramSenderController < ApplicationController

  token = '230331599:AAEEazPTD6unLIXefUcooQG4-Of_4qcb5-8'

  def sendTextMessageOnTelegramTo(chat_id, message)

    Telegram::Bot::Client.run(token) do |bot|
      bot.api.send_message(chat_id: chat_id , text: message)

    end
  end

  def sendPhotoMessageOnTelegramTo(chat_id, image_url, message)

    Telegram::Bot::Client.run(token) do |bot|
      bot.api.send_photo(chat_id: chat_id, photo: Faraday::UploadIO.new(image_url, 'image/jpeg'), caption: message)

    end
  end


  def sendTextMessageToMany(chat_ids, message)

    Telegram::Bot::Client.run(token) do |bot|

      chat_ids each do |chat_id|

        bot.api.send_message(chat_id: chat_id , text: message)
      end
    end
  end


  def sendPhotoMessageToMany(chat_ids, image_url, message)

    Telegram::Bot::Client.run(token) do |bot|

      chat_ids each do |chat_id|

        bot.api.send_photo(chat_id: chat_id, photo: Faraday::UploadIO.new(image_url, 'image/jpeg'), caption: message)
      end
    end
  end

end
