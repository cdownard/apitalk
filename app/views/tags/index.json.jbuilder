json.array!(@tags) do |tag|
  json.extract! tag, :id, :name, :taggable_id, :taggable_type
  json.url tag_url(tag, format: :json)
end
