FactoryGirl.define do
  factory :admin do
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    day_id { Faker::Number.day_id }
    user_id { Faker::Number.user_id }
  end
end
