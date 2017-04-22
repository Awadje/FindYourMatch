class Admin::DaysController < ApplicationController
 before_filter :authorized?


  def index
    days_index = Day.all
    @days = days_index.group_by(&:day)
  end

  def create
    Day.matcherToday(params[:day])
    redirect_to admin_days_path, notice: "Matches created"
   end

private

def authorized?
  unless current_user.admin
    flash[:error] = "You are not an admin."
    redirect_to root_path
  end
end


  end
