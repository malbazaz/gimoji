class Emotion < ApplicationRecord
	has_many :giftmoji_emotions
	has_many :gimojis, through: :giftmoji_emotions
end
