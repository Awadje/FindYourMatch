FactoryGirl.define do
  factory :day do
    id     { Faker::Number }
    day    { Date.new }
  
end
end
