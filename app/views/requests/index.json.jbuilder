json.array!(@requests) do |request|
  json.extract! request, :id, :title, :request_description, :price, :publish_date, :validate_date, :name, :phone, :cellphone, :skypeAcc, :email
  json.url request_url(request, format: :json)
end
