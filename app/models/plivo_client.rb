class PlivoClient
    require "plivo"
    include Plivo

    attr_reader :client


    def initialize
        @client = RestClient.new(auth_id, auth_token)
    end

    def send_text(phone, message)   
        client.messages.create(
            phone_number,
            [phone],
            message
        )
    end

    def auth_id
        Rails.application.credentials.plivo[:auth_id]
    end

    def auth_token
        Rails.application.credentials.plivo[:auth_token]
    end

    def phone_number
        Rails.application.credentials.plivo[:phone_number]
    end

end