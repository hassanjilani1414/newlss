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
    @post.images.attach(params[:post][:images])

    if @post.save
      redirect_to post_path(@post)
    else
      redirect_to new_post_path
    end
  end
  private
  def post_params
    params.require(:post).permit(:title,:content,:status,:images=>[:@tempfile,:@original_filename,:@original_filename,:@headers])
  end

end
