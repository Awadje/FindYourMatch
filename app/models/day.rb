class Day < ApplicationRecord
  has_and_belongs_to_many :users
  serialize :match

end
