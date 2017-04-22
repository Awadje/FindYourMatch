class Admin::DaysController < ApplicationController
 before_filter :authorized?


  def index
    @days = Day.all
  end

  def create
    @day = Day.new(day_params)
  if @day.save
     redirect_to admin_root_path
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
        params.require(:day).permit(:day, :user_id, :match, :match_a, :match_b)
      end

      # def matcher
      #    @matching = User.where(admin: false).pluck(:email).shuffle
      #   [@matching.pop(2)]
      # end

  end
