class Transaction < ApplicationRecord
	belongs_to :giftmoji
	belongs_to :user
end
