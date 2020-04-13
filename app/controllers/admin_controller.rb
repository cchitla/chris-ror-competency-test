class AdminController < ApplicationController
  access admin: [:dashboard]
  
  def dashboard
    @users = User.all
  end

  def update
    @user.update(article_params) 
  end

end
