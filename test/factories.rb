FactoryGirl.define do
  factory :quiz do
    question { Faker::Lorem.sentence(4, true, 2) }
    good_answer { Faker::Lorem.sentence(2, true, 1) + ' Yes!'}
    bad_answer { Faker::Lorem.sentence(2, true, 2) }
  end

  factory :topic do
    name { Faker::Lorem.word.capitalize }
  end
end