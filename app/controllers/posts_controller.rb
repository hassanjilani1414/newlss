class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @post = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end
  def create
    @post = Post.new(post_params)
    @post.user_id = current_user.id

    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to new_post_path
    end
  end
  private
  def post_params
    params.require(:post).permit(:title,:content,:status)
  end

end
