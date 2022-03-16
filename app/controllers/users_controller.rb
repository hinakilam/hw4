class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(params["user"])
    @user.save
    session[:user_id] = @user.id
    redirect_to "/places"
  end
end
