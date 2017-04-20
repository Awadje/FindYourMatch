class PagesController < ApplicationController
  def home
  end

  def student
    @days = Day.all
  end

  def admin
    @users = User.all
      @days = Day.all
  end

  def user
  end

end
