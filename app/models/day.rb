class Day < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :student_a, :class_name => "User"
  belongs_to :student_b, :class_name => "User"

# def matcher
#   @matching = User.pluck(:email)
#   [@matching.first, @matching.last]
# end

end
