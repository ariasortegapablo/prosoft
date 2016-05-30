class MailSender < ActionMailer::Base
  default from: "contacto@wally.com.bo"

  def send_email_to(email, subject, message)
    mail(to: email, subject: subject)
  end

  def send_email_to_many(emails, subject, message)
    emails each do |email|
      mail(to: email, subject: subject)
    end
  end

end
