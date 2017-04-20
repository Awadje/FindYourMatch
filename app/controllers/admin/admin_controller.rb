
class AdminController < ApplicationController
  before_filter :authorized?

 private
 def authorized?
   unless current_user.is_admin
     redirect_to root_path
   end
 end

end
