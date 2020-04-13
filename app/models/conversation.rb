class Conversation < ApplicationRecord
    has_many :messages, dependent: :destroy

    validates :phone, phone: true
end
