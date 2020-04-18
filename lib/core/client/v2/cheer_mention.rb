require_relative "./base"

module Core
  module Client
    module V2
      class CheerMention < Base
        def self.table_name
          "cheer-mentions"
        end
      end
    end
  end
end
