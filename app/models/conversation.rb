class Conversation < ApplicationRecord
    has_many :messages

    validates :phone, phone: true
end
