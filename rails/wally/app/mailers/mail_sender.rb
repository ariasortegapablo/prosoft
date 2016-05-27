class MailSender < ActionMailer::Base
  default from: "from@example.com"

  def sample_email
    mail(to: "diego1199@hotmail.com", subject: 'Sample Email')
  end

end
