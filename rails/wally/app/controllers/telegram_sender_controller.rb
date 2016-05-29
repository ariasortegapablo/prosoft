require 'telegram_bot'

class TelegramSenderController < ApplicationController
  def sendMessageTo

    bot = TelegramBot.new(token: '230331599:AAEEazPTD6unLIXefUcooQG4-Of_4qcb5-8')
    # bot.get_updates(fail_silently: true) do |message|
    #   puts "@#{message.from.username}: #{message.text}"
    #   command = message.get_command_for(bot)
    #   puts "Message:#{message.chat.id}"
    #   message.reply do |reply|
    #     case command
    #       when /greet/i
    #         reply.text = "Hello, #{message.from.first_name}!"
    #       else
    #         reply.text = "#{message.from.first_name}, have no idea what #{command.inspect} means."
    #     end
    #     puts "sending #{reply.text.inspect} to @#{message.from.username}"
    #     reply.send_with(bot)
    #   end
    # end
    bot.api.send_message(chat_id: 195081 , text: "Hello")
  end

  def sendMessageToMany

  end
end
