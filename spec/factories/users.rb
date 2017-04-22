FactoryGirl.define do
  factory :user do
    id       { Faker::Number }
    email    { Faker::Internet.email }
    password { Faker::Internet.password }
    admin    { false }
    no_match { false }


  end
end
