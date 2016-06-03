require 'twilio-ruby'


class SmsSenderController < ApplicationController

  #Twilio Credentials and Phone Number

  # Sends a sms to a recipient
  # Params:
  # - number: the recipient number
  # - message: the sms content
  def send_SMS_to(number, message)
    SMSSender.send_SMS_to(number, message)

  end
  helper_method :send_SMS_to

  # Sends a sms to a recipients list (array)
  # Params:
  # - numbers: the recipients numbers
  # - message: the sms content
  def send_SMS_to_many(numbers, message)

    SMSSender.send_SMS_to_many(numbers, message)

  end
  helper_method :send_SMS_to_many

end
