json.array!(@artworks) do |artwork|
  json.extract! artwork, :title
  json.url artwork_url(artwork, format: :json)
end