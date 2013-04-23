json.array!(@exhibitions) do |exhibition|
  json.extract! exhibition, :gallery, :start_date, :end_date
  json.url exhibition_url(exhibition, format: :json)
end