FactoryGirl.define do
  factory :quiz do
    sequence :question do |n|
      "What kind of sport is paragliding? (#{n})"
    end
    good_answer 'Extreme!'
    bad_answer 'Casual.'
  end
end