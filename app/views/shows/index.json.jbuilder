json.array!(@shows) do |show|
  json.extract! show, :id, :name, :theater, :address, :price, :show_time, :description
  json.url show_url(show, format: :json)
end
