json.array!(@advertises) do |advertise|
  json.extract! advertise, :id, :title, :description, :direction, :price, :negotiable, :credit, :price_, :m2, :name_contact, :phone_contact, :time_to_contact, :visits_number, :publish_date, :validate_date
  json.url advertise_url(advertise, format: :json)
end
