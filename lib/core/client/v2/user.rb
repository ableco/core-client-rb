require_relative "./base"

module Core
  module Client
    module V2
      class User < Base
        def self.current
          requestor.custom("current", { request_method: :get }, {}).first
        end
      end
    end
  end
end
