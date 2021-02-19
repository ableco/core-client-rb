require "json_api_client"
require "dotenv/load"

module Core
  module Client
    module V2
      class Base < JsonApiClient::Resource
        self.site = ENV['CORE_API_URL'] || "https://core.able.co/api/v2"
        self.raise_on_blank_find_param = true

        class << self
          def find(id)
            super(id).first
          end
        end
      end
    end
  end
end

Core::Client::V2::Base.connection_options[:headers] = { "Authorization" => "Bearer #{ENV['CORE_API_TOKEN']}" }
