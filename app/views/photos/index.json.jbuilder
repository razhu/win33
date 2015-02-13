json.array!(@photos) do |photo|
  json.extract! photo, :id, :ubication, :genre
  json.url photo_url(photo, format: :json)
end
