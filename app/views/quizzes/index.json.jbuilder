json.array!(@quizzes) do |quiz|
  json.extract! quiz, :id, :question, :good_answer, :bad_answer
  json.url quiz_url(quiz, format: :json)
end
