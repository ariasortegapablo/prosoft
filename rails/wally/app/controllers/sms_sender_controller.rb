require 'twilio-ruby'

class SmsSenderController < ApplicationController

  twilio_sid = "AC1f9a753d8c904a37dc3bbfb75d2b735c"
  twilio_token = "9405e3cd62e25f69ce93dd6b3b005b7a"
  twilio_phone_number = "2054172029"


  def sendSMSto(number, message)

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => number,
        :body => message
    )

  end

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
