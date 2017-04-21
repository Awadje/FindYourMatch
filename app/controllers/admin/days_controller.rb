class Admin::DaysController < ApplicationController
 before_filter :authorized?


  def index
    @days = Day.all
  end

  def create
    @day = Day.new(day_params)

        @logic = User.where(admin: false).pluck(:email).shuffle
        @logicresult = @logic.pop(2)

      if @day.save
         redirect_to admin
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

  end
