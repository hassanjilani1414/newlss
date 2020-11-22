class UsersController < ApplicationController
  def index
    @users = User.all
    @posts= current_user.posts
  end
  def show
    @user = current_user
    @posts = @user.posts
  end

end
