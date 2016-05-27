# Preview all emails at http://localhost:3000/rails/mailers/mail_sender
class MailSenderPreview < ActionMailer::Preview

  def sample_mail_preview
    MailSender.sample_email
  end

end
