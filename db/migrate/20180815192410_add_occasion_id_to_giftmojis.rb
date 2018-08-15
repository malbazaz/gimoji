class AddOccasionIdToGiftmojis < ActiveRecord::Migration[5.2]
  def change
    add_column :giftmojis, :occasion_id, :integer
  end
end
