class Admin::UsersController < ApplicationController
before_filter :authorized?

def index
    @users = User.all
end

def authorized?
  unless current_user.admin
    flash[:error] = "You are not an admin."
    redirect_to root_path
  end
end


end
