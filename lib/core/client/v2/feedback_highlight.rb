require_relative "./base"

module Core
  module Client
    module V2
      class FeedbackHighlight < Base
        def self.table_name
          "feedback-highlights"
        end
      end
    end
  end
end
