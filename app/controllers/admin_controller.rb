class AdminController < ApplicationController
  access admin: [:dashboard]
  
  def dashboard
    @users = User.all
  end

end
