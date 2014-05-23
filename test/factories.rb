FactoryGirl.define do
  factory :quiz do
    topic

    question { Faker::Lorem.sentence(4, true, 2).gsub('.','?') }
    good_answer { Faker::Lorem.sentence(2, true, 1) + ' Yes!'}
    bad_answer { Faker::Lorem.sentence(2, true, 2) }
  end

  factory :topic do
    name { Faker::Lorem.word.capitalize }

    factory :topic_with_quizzes do
      # posts_count is declared as an ignored attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      ignore do
        quiz_count 5
      end

      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including ignored
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |topic, evaluator|
        create_list(:quiz, evaluator.quiz_count, topic: topic)
      end
    end
  end
end