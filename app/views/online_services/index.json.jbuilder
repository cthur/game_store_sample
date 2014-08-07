json.array!(@online_services) do |online_service|
  json.extract! online_service, :id, :name, :platform, :price, :quantity, :emailed, :instore
  json.url online_service_url(online_service, format: :json)
end
