json.array!(@comments) do |comment|
  json.extract! comment, :id, :word
  json.url comment_url(comment, format: :json)
end
