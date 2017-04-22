FactoryGirl.define do
  factory :day do
    day    { Date.new }
    student_a { Faker::Number }
    student_b { Faker::Number }
end
end
