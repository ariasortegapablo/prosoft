class AddUpdateIdToTelegramChatIds < ActiveRecord::Migration
  def change
    add_column :telegram_chat_ids, :updateId, :string, :unique => true
  end
end
