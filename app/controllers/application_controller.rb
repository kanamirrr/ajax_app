class ApplicationController < ActionController::Base
  def index
    @posts = Post.all.order(id: "DESC")
  end

end