class SessionsController < ApplicationController
    def new
        @user = User.new
        # render layout: 'login'
     end
  
     def create
        @user = User.find_by(username: params[:username])
        if  @user && @user.authenticate(params[:password])
           session[:user_id] = @user.id
           redirect_to home_path(user_id: @user.id)
        else
           flash[:notice] = "Please provide valid login details."
           redirect_to user_path(@user)
        end
     end
  
     def destroy
        session[:user_id] = nil
        redirect_to user_path(@user)
     end
  
     private
  
     def session_params
        params.require(:session).permit(:user_id)
     end
  
  end