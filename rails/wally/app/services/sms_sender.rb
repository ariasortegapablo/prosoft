class SMSSender

  @@twilio_sid = Rails.application.secrets.twilio_sid
  @@twilio_token = Rails.application.secrets.twilio_token
  @@twilio_phone_number = Rails.application.secrets.twilio_phone_number


  def self.send_SMS_to(number, message)

    twilio_client = Twilio::REST::Client.new  @@twilio_sid, @@twilio_token
    twilio_client.account.sms.messages.create(
        :from => @@twilio_phone_number,
        :to => number,
        :body => message
    )

  end

  # Sends a sms to a recipients list (array)
  # Params:
  # - numbers: the recipients numbers
  # - message: the sms content
  def self.send_SMS_to_many(numbers, message)

    twilio_client = Twilio::REST::Client.new @@twilio_sid, @@twilio_token

    numbers.each do |number|

      twilio_client.account.sms.messages.create(
          :from => @@twilio_phone_number,
          :to => number,
          :body => message
      )

    end

  end

end