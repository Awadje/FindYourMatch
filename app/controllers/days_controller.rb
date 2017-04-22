class DaysController < ApplicationController
  before_action :authenticate_user!

  def index
    days_index = Day.all

    studentdays = days_index.select do |day|
      day.student_a == current_user.id.to_s || day.student_b == current_user.id.to_s

  end

  @studentdays = days_index.select do |day|
    day.day == Date.today
  end

end
end
