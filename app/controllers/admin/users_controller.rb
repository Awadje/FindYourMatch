class Admin::UsersController < ApplicationController
before_filter :authorized?

def index
    @users = User.all
end


  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to :admin_users, notice: "Admin status updated"
    else
      redirect_to 'pages#home'
    end
  end

def authorized?
  unless current_user.admin
    flash[:error] = "You are not an admin."
    redirect_to root_path
  end
end

def user_params
      params.require(:user).permit(:email, :admin)
    end


end
