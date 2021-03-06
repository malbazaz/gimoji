class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_secure_password
         has_many :giftmojis
         has_many :giftmoji_emotions, through: :giftmojis 
         has_many :emotions, through: :giftmoji_emotions

def buy(gimoji)
	if self.gift_coins >= giftmoji.price
		self.gift_coins -= giftmoji.price 
		giftmoji.user_id = self.id 
		giftmoji.save 
		self.save 
	else 
		"You don't have any enough giftcoins to purchase this giftmoji"
	end 
end 

end
