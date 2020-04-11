class ConversationSerializer < ActiveModel::Serializer
  attributes :id, :title, :phone
  has_many :messages
end
