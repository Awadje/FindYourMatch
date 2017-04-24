class DaysController < ApplicationController
  before_action :authenticate_user!

  def index
    days_index = Day.all

    studentdays = days_index.select do |day|
      day.student_a == current_user.id || day.student_b == current_user.id

  end

  @studentdays = studentdays.select do |day|
    day.day == Date.today
  end

    @studenthistory = studentdays.select do |day|
      day.day <= Date.today
    end

end
end
