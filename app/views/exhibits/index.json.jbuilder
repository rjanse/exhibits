json.array!(@exhibits) do |exhibit|
  json.extract! exhibit, :artwork_id, :exhibition_id, :sold, :price
  json.url exhibit_url(exhibit, format: :json)
end