class UsersController < ApplicationController
  def index

    @users = User.all
    @posts= current_user.posts
  end



  def show
    @user = User.find(params[:id])
    @posts = @user.posts

  end

  def new
    @user = User.new
  end

  def create
    user=User.new(user_params)

    if user.save
      redirect_to :"users"
    else
      flash[:errors]=user.errors.full_messages
      redirect_to "/user/new"
    end
  end
  private
  def user_params
    params.require(:user).permit(:user_name,:email,:password)
  end

end
