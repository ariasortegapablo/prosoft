class CreateTelegramChatIds < ActiveRecord::Migration
  def change
    create_table :telegram_chat_ids do |t|
      t.string :chatId
      t.string :firstname
      t.string :lastname
      #t.string :updateId

      t.timestamps null: false
    end
  end
end
