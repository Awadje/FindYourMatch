FactoryGirl.define do
  factory :user do
    email    { "email@email.com" }
    password { "password123" }
    admin_id { 1 }
    days_id   { 1 }


  end
end
