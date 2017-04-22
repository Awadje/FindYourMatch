FactoryGirl.define do
  factory :day do
    day    { Date.new }
    student_a { 1 }
    student_b { 2 }
end
end
