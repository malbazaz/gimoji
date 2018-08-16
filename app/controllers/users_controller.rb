class UsersController < ApplicationController
before_action :authenticate_user!

    def index
        @users = User.all
        render "users/index"
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
        # need to add option to buy giftmoji but also gifting?
    end 

    

end

