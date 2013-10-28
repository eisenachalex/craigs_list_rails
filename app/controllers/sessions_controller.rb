class SessionsController < ApplicationController
    def login

    end

    def create
      p params
      @user = User.find_by_email(params[:user][:email])
      if @user 
        session[:user_id] = @user.id 
        redirect_to user_path(@user)
      end

    end

end
