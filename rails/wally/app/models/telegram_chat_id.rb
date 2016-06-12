class TelegramChatId < ActiveRecord::Base
  validates :updateId , presence: true
end
