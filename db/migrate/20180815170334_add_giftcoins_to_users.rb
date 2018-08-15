class AddGiftcoinsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :giftcoins, :integer, default: 1000
  end
end
