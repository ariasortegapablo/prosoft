require 'twilio-ruby'

class SmsSenderController < ApplicationController

  #Twilio Credentials and Phone Number

  # Sends a sms to a recipient
  # Params:
  # - number: the recipient number
  # - message: the sms content
  def send_SMS_to(number, message)

    twilio_sid = "AC1f9a753d8c904a37dc3bbfb75d2b****"
    twilio_token = "462fa2c260d6fb7663a75e06e1da****"
    twilio_phone_number = "2054172029"
    twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
    twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => number,
        :body => message
    )

  end
  helper_method :send_SMS_to

  # Sends a sms to a recipients list (array)
  # Params:
  # - numbers: the recipients numbers
  # - message: the sms content
  def send_SMS_to_many(numbers, message)

    twilio_sid = "AC1f9a753d8c904a37dc3bbfb75d2b****"
    twilio_token = "462fa2c260d6fb7663a75e06e1da****"
    twilio_phone_number = "2054172029"
    twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    numbers.each do |number|

      twilio_client.account.sms.messages.create(
          :from => "+1#{twilio_phone_number}",
          :to => number,
          :body => message
      )

    end

  end
  helper_method :send_SMS_to_many

end
