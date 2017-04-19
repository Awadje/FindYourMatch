class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def admin?
    self.admin == true
  end

end
