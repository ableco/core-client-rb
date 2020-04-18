require_relative "./base"

module Core
  module Client
    module V2
      class FeedbackRequest < Base
        def self.table_name
          "feedback-requests"
        end
      end
    end
  end
end
