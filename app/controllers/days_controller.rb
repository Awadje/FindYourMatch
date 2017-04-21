class DaysController < ApplicationController
  before_action :authenticate_user!

  def index
    @days = Day.all

    studentdays = @days.select do |day|
      day.match.partition(' ').first == current_user.email || day.match.partition(' ').last == current_user.email
  end

  @studentdays = studentdays.select do |day|
    day.day == Date.today
  end

  @studenthistory = studentdays.select do |day|
    day.day < Date.today
  end
end

  def create
    @day = Day.new(day_params)
  if @day.save
     render 'new'
     #matcher
   end
  end


  def show
     @day = Day.find(params[:id])
  end

  def day_params
        params.require(:day).permit(:day, :user_id, :match)
      end

  end



  # def matcher
  #    @matching = User.pluck(:email).shuffle
  #   [@matching.shift, @matching.pop]
  # end
