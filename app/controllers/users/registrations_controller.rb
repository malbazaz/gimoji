    class Users::RegistrationsController < Devise::RegistrationsController
	
    def new
        @user = User.new 
        render "users/new"
    end 
    
    def create 
        @user= User.create(user_params)
        session[:user_id]= @user.id
    end 
    private 

    def user_params 
        params.require(:user).permit(:fullname, :username, :password, :giftcoins, :admin)
    end 

    end