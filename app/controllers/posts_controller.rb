class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end
end
