FactoryGirl.define do
  factory :admin do
    email    { "email@email.com" }
    password { "password123" }
    user_id { 1 }
    days_id   { 1 }

  end
end
