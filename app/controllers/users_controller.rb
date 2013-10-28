class UsersController < ApplicationController
    def new
    end

    def index
    end



    def create
      @user = User.new(params[:user])
      @user.save 
      redirect_to user_path(@user)
    end

    def show
      @user = User.find(params[:id])
      @posts = @user.posts.all
    end

    # private 
    #   def post_params
    #     params.require(:user).permit(:name, :email, :password)
    #   end
end
