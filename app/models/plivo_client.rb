class PlivoClient
    require 'dotenv/load'
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
        ENV["PLIVO_AUTH_ID"]
    end

    def auth_token
        ENV["PLIVO_AUTH_TOKEN"]  
    end

    def phone_number
        ENV["PLIVO_PHONE_NUMBER"]
    end

end