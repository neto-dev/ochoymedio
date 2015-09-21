json.array!(@photographies) do |photography|
  json.extract! photography, :id, :name, :description, :url, :categories_id
  json.url photography_url(photography, format: :json)
end
