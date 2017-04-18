FactoryGirl.define do
  factory :day do
    date    { Faker::Date.date }
    user_id { Faker::Number.user_id }
    admin_id { Faker::Number.admin_id }
end
end
