class MailSender < ActionMailer::Base
  default from: "contacto@wally.com.bo"

  # Sends an email to a recipient
  # Params:
  # - email: the recipient
  # - subject: the email subject
  # - message: the email content
  def send_email_to(email, subject, message)
    mail(to: email, subject: subject)
  end

  # Sends an email to a list of recipients (array)
  # Params:
  # - emails: the recipients list
  # - subject: the email subject
  # - message: the email content
  def send_email_to_many(emails, subject, message)
    emails each do |email|
      mail(to: email, subject: subject)
    end
  end

end
