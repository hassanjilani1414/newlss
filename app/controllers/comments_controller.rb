class CommentsController < ApplicationController
  def index
    @posts = Post.all
  end
  def new
    @post = Post.new
  end
end