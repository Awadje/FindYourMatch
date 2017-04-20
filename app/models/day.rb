class Day < ApplicationRecord
  has_and_belongs_to_many :users

# def matcher
#   @matching = User.pluck(:email)
#   [@matching.first, @matching.last]
# end

end
