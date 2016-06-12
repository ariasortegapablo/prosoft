class BroadcastingManager

  @missing_person

  def broadcast(missing_person)
    @missing_person = missing_person


  end

  private

  def send_sms_to_emergency_services

    police_officers = Police.where(in_service: true)
    message = "Persona desaparecida"
    police_officers each do |police_officer|
      SendSmsJob.set(wait: 5.seconds).perform_later(police_officer.phone, message)
    end


  end


end