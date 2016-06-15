json.array!(@catalogs) do |catalog|
  json.extract! catalog, :id, :name, :description, :date, :category_id
  json.url catalog_url(catalog, format: :json)
end
