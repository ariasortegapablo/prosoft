class TestEnrutadorController < ApplicationController
  def send_message()
    SendSmsJob.set(wait: 20.seconds).perform_later('+59170422102','Hola Diego Auza')
  end
end
