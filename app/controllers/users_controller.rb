class UsersController < ApplicationController
  def index
    @users = User.all
    @posts= current_user.posts
  end
  def show
    @user = User.find(params[:id])
    @posts = @user.posts
  end



end
