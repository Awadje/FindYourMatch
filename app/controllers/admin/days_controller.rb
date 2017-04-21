class Admin::DaysController < ApplicationController
 before_filter :authorized?


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

  def new
  end

  def edit
  end

private

def authorized?
  unless current_user.admin
    flash[:error] = "You are not an admin."
    redirect_to root_path
  end
end


  def day_params
        params.require(:day).permit(:day, :user_id, :match)
      end

      # def matcher
      #    @matching = User.pluck(:email).shuffle
      #   [@matching.shift, @matching.pop]
      # end




  end
