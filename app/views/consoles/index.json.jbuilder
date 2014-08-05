json.array!(@consoles) do |console|
  json.extract! console, :id, :name, :abbr, :company, :release_date, :image_path
  json.url console_url(console, format: :json)
end
