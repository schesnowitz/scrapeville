json.array!(@googles) do |google|
  json.extract! google, :id, :title, :body, :time
  json.url google_url(google, format: :json)
end
