FactoryGirl.define do
  factory :user do
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    day_id { Faker::Number.day_id }
    admin_id { Faker::Number.admin_id }
  end
end
