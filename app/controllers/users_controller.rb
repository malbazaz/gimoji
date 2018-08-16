class UsersController < ApplicationController
before_action :authenticate_user!

    def index
        @users = User.all
        render "users/index"
    end 

    def new
        @user = User.new 
        render "users/new"
    end 
    
    def create 
        @user= User.create(user_params)
        session[:user_id]= @user.id
    end 

    def show 
        if !!session[:user_id]
             @user = User.find_by_id(params[:id])
        else 
            redirect_to '/'
        end
        render "users/show"
    end 

    def update 
    end 

    
    private 

    def user_params 
        params.require(:user).permit(:fullname, :username, :password, :giftcoins, :admin)
    end 
end

