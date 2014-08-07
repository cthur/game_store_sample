json.array!(@accessories) do |accessory|
  json.extract! accessory, :id, :name, :platform, :price, :quantity, :instore, :online
  json.url accessory_url(accessory, format: :json)
end
