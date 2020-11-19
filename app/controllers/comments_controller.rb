class CommentsController < ApplicationController

  before_action :find_commentable
  def  specific_post

  end
  def new

    @post = Post.find_by_id(params[:post_id])
    @comment = @post.comments.new
  end



  def create
    #debugger
    @post = Post.find_by_id(params[:post_id])
     @comment = @post.comments.new(comment_params)

    if @comment.save
      redirect_to :root, notice: 'Your comment was successfully posted!'
    else
      redirect_to :back, notice: "Your comment wasn't posted!"
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
