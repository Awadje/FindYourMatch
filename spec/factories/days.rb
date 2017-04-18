FactoryGirl.define do
  factory :day do
    day    { Date.new }
    user_id { 1 }
    admin_id { 1 }
end
end
