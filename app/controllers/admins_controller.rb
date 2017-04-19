class AdminsController < ApplicationController
   before_action :authenticate_admin!

def index
  @users = User.all
  @admins = Admin.all
end

end
