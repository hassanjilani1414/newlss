class CommentsController < ApplicationController
  before_action :find_commentable, only: :create
  def new
    @comment=Comment.new
  end
  def create
    @comment = @commentable.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      flash[:confirm] = "Your comment was successfully posted!"
      redirect_to root_url
    else
      flash[:errors] = @comment.errors.full_messages
      redirect_to post_path(params[:post_id])
    end
  end
  private
  def comment_params
   params.require(:comment).permit(:body)
  end
   def find_commentable
    @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
    @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
  end
end
