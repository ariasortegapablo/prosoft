require 'twilio-ruby'

class SmsSenderController < ApplicationController

  #Twilio Credentials and Phone Number
  twilio_sid = "AC1f9a753d8c904a37dc3bbfb75d2b735c"
  twilio_token = "9405e3cd62e25f69ce93dd6b3b005b7a"
  twilio_phone_number = "2054172029"

  # Sends a sms to a recipient
  # Params:
  # - number: the recipient number
  # - message: the sms content
  def sendSMSto(number, message)

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => number,
        :body => message
    )

  end

  # Sends a sms to a recipients list (array)
  # Params:
  # - numbers: the recipients numbers
  # - message: the sms content
  def sendSMSToMany(numbers, message)

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    numbers.each do |number|

      @twilio_client.account.sms.messages.create(
          :from => "+1#{twilio_phone_number}",
          :to => number,
          :body => message
      )

    end

  end

end
