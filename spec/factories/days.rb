FactoryGirl.define do
  factory :day do
    id     { Faker::Number }
    day    { Date.new }
    student_a { Faker::Number }
    student_b { Faker::Number }
end
end
