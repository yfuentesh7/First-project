json.array!(@announces) do |announce|
  json.extract! announce, :id, :price, :title, :description, :email, :name, :phone
  json.url announce_url(announce, format: :json)
end
