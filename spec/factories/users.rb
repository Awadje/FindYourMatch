FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    days_id { Faker::Number.days_id }
  end
end
