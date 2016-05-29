json.array!(@documents) do |document|
  json.extract! document, :id, :name, :description, :image
  json.url pet_url(document, format: :json)
end
