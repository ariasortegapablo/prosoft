json.array!(@presses) do |press|
  json.extract! press, :id, :name, :phone, :main_email, :secondary_mail
  json.url press_url(press, format: :json)
end
