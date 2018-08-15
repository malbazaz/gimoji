class UsersController < ApplicationController

    def index
        @users = User.all 
    end 

    def new
        @user = User.new  
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
    end 

    def update 
    end 

    
    private 

    def user_params 
        params.require(:user).permit(:fullname, :username, :password, :giftcoins, :admin)
    end 
end

