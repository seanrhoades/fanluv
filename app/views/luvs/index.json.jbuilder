json.array!(@luvs) do |luv|
  json.extract! luv, :id
  json.url luv_url(luv, format: :json)
end
