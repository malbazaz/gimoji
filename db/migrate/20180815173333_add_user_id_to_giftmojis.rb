class AddUserIdToGiftmojis < ActiveRecord::Migration[5.2]
  def change
    add_column :giftmojis, :user_id, :integer
  end
end
