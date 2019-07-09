class UsersController < ApplicationController

    # before_action :require_login
    # skip_before_action :require_login, only: [:new, :create]


    def show 
        @user = User.find(params[:id])
    end 

    def index
        @users = User.all 
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
           session[:user_id] = @user.id
           flash[:notice] = "Welcome to Casino!"
           redirect_to home_path(user_id: @user.id)
        else
           flash[:errors] = @user.errors.full_messages
           redirect_to user_path
        end
     end

    def edit
        @users = User.all
     end
  
     def new_password
     end
  
     def update
        @user.update(user_params)
        flash[:errors] = @user.errors.full_messages
        redirect_to user_path
     end

      def destroy
        User.find(params[:id]).destroy
        session[:user_id] = nil
        redirect_to users_path
        flash[:notice] = "Your account has been successfully removed from our database. Hopefully see you again soon!"
     end
    
    private

    
    
      def user_params
        
        params.require(:user).permit(:username, :age, :password, :balance)
      end
      
    #   def require_login
    #     return head(:forbidden) unless session.include?(:user_id)
    #  end
    
    
end
