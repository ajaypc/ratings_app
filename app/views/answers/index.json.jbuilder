json.array!(@answers) do |answer|
  json.extract! answer, :id, :answerText, :rating, :questionId
  json.url answer_url(answer, format: :json)
end
