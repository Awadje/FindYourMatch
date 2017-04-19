class DaysController < ApplicationController
  def index
    @days = Day.all
  end

  def create
    @day = Day.new(day_params)
  if @day.save
     render 'new'
   end
  end

  def show
     @day = Day.find(params[:id])
  end

  def new
  end

  def edit
  end

private
  def day_params
        params.require(:day).permit(:day, :user_id, :match)
      end


  end
