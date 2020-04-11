class Webhooks::PlivoController < ApplicationController

    def create
        conversation = Conversation.find_by(phone: params[:From])
        body = params[:Text]

        message = conversation.messages.new(text: body, origin: 'contact')


        if message.save
            
            MessagesChannel.broadcast_to(conversation, {
                conversation: conversation,
                message: message
                
            })
        end

        render json: {messages: conversation.messages}



        head :ok
    end
end