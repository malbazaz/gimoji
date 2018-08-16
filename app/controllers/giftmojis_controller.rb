class GiftmojisController < ApplicationController

    def new 
        @giftmoji = Giftmoji.new 
        if session[:user_id]
            @user = User.find_by_id(session[:user_id])
            if @user.admin
                render "new"
            end 
        end 
    end

    def create 
        @giftmoji = Giftmoji.create(attr_params)
        redirect_to "/giftmojis/#{@giftmoji.id}"
    end 

    def index 
        
        if !!session[:user_id]
            @user = User.find_by_id(params[:id])
            @giftmojis = Giftmoji.all
        else 
            redirect_to '/'
        end
    end 

    def show 
        @giftmoji = Giftmoji.find_by_id(params[:id])
        @user = User.find_by_id(session[:user_id])
    end 

    def edit 
        @giftmoji = Giftmoji.find_by_id(params[:id])
    end 

    def update 
        @giftmoji = Giftmoji.find_by_id(params[:id])
        @giftmoji.update(attr_params)
        @giftmoji.save 
        redirect_to "/giftmojis/#{@giftmoji.id}"
    end 
    private 

    def attr_params 
        params.require(:giftmoji).permit(:name, :tag, :message, :emotions, :occasion, :user_id)
    end 
end
