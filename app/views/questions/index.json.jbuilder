json.array!(@questions) do |question|
  json.extract! question, :id, :questionText, :rating
  json.url question_url(question, format: :json)
end
