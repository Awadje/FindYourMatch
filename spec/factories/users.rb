FactoryGirl.define do
  factory :user do
    email    { "email@email.com" }
    password { "password123" }
    admin  { false }
    no_match { false }


  end
end
