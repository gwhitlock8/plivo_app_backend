class Message < ApplicationRecord
  belongs_to :conversation

  # after_create :send_sms


  # def send_sms
  #   return if message.origin === 'contact'

  #   PlivoClient.new.send_text(conversation.phone,message.text)
  # end
end
