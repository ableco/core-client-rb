require_relative "./base"

module Core
  module Client
    module V2
      class ProjectAllocation < Base
        def self.table_name
          "project-allocations"
        end
      end
    end
  end
end