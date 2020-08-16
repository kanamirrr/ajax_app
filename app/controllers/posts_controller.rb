class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    Post.create(content: params[:content])
    redirect_to action: :index
  end

  def checked
    post = Post.find(params[:id])
    if post.checked then
      post.update(checked: fales)
    else
      post.update(checked: true)
    end

    item = post.find(params[:id])　#更新したレコードを取得し直し
    render json: {post: item} #checked.jsに返却
  end
end
