class SendSmsJob < ActiveJob::Base
  queue_as :default

  def perform(number, message)
      SmsSenderController.send_SMS_to(number,message)
  end
end
