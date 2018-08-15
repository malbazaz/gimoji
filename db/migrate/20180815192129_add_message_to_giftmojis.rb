class AddMessageToGiftmojis < ActiveRecord::Migration[5.2]
  def change
    add_column :giftmojis, :message, :text
  end
end
