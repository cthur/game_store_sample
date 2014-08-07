json.array!(@games) do |game|
  json.extract! game, :id, :name, :platform, :edition, :price, :quantity, :release_date, :instore, :online, :digital, :preorder
  json.url game_url(game, format: :json)
end
