class Admin < ApplicationController
  protect_from_forgery with: :exception

  private
  def authorized?
    unless current_user.admin
         flash[:error] = "You are not an admin."
      redirect_to root_path
    end
  end

end
