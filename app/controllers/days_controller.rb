class DaysController < ApplicationController
  before_action :authenticate_user!

  def index
    days_index = Day.all

    studentdays = days_index.select do |day|
      day.id_first_student == current_user.id.to_s || day.id_second_student == current_user.id.to_s
  end

  @studentdays = days_index.select do |day|
    day.day == Date.today
  end

  @studenthistory = days_index.select do |day|
    day.day < Date.today
  end
end
end
