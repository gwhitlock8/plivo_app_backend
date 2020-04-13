class PlivoClient
    require 'dotenv/load'
    require "plivo"
    require 'json'
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

    def get_logs
        messages = @client.messages.list(
            limit: 2,
            offset: 0,
            to_number: '18326431415'
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