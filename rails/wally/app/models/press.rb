class Press < ActiveRecord::Base
  validates :name, presence: true
  validates :phone, presence: true
  validates :main_email, email_format: { message: "Comprueba que sea una dirección de correo electrónico valida" }
  validates :secondary_mail, email_format: { message: "Comprueba que sea una dirección de correo electrónico valida" }


end
