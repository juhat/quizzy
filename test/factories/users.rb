# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    sequence :email do |n| 
      "user#{n}@email.com"
    end 
    password "12345678"
    password_confirmation "12345678"
  end
end
