json.array!(@comments) do |comment|
  json.extract! comment, :id, :answerId, :commentText, :rating
  json.url comment_url(comment, format: :json)
end
