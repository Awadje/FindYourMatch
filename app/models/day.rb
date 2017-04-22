class Day < ApplicationRecord
  has_and_belongs_to_many :users
  belongs_to :student_a, :class_name => "User"
  belongs_to :student_b, :class_name => "User"

  def self.matcherToday(today)
    today = day.to_date
    matches = makeMatches()

    matches.each do |student|
    new_day = Day.create(student_a: student[0]), student_b: student[1], day: today)
  end


  matching = User.where(admin: false).pluck(:id).shuffle
  @match1 = matching.first
  @match2 = matching.last
  end

end
