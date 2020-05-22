require_relative "./base"

module Core
  module Client
    module V2
      class User < Base
        custom_endpoint :current, on: :collection, request_method: :get
        @current = self.current.first
        def self.current
          @current
        end
      end
    end
  end
end
