require_relative "./base"

module Core
  module Client
    module V2
      class FeedbackMessage < Base
        def self.table_name
          "feedback-messages"
        end
      end
    end
  end
end
