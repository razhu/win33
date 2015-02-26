json.array!(@features) do |feature|
  json.extract! feature, :id, :feature_type, :description
  json.url feature_url(feature, format: :json)
end
