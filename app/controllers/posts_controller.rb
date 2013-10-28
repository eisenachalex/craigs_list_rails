class PostsController < ApplicationController
  def new
  end

  def create
    p session[:user_id]
    @user = User.find(session[:user_id])
    p "THIS IS Post#{params[:post]}"
    @post = @user.posts.create(params[:post])
    redirect_to user_path(@user)
  end
  
  def show
    @user = User.find(session[:user_id])
    @post = Post.find(params[:id])
  end
end
