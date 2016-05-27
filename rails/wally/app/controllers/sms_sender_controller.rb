require 'twilio-ruby'

class SmsSenderController < ApplicationController


  def sendSMSto(number)

    number_to_send_to = "+59170422102"

    twilio_sid = "AC1f9a753d8c904a37dc3bbfb75d2b735c"
    twilio_token = "9405e3cd62e25f69ce93dd6b3b005b7a"
    twilio_phone_number = "2054172029"

    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token

    @twilio_client.account.sms.messages.create(
        :from => "+1#{twilio_phone_number}",
        :to => number_to_send_to,
        :body => "This is an message. It gets sent to #{number_to_send_to}"
    )

    MailSender.sample_email.deliver_now

  end
end
