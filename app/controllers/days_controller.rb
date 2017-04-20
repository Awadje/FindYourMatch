class DaysController < ApplicationController
  before_action :authenticate_user!

  def index
    @days = Day.all
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
