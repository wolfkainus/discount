json.array!(@bonus) do |bonu|
  json.extract! bonu, :id, :title, :description, :photo, :value, :expiration
  json.url bonu_url(bonu, format: :json)
end
