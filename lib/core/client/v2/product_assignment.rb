require_relative "./base"

module Core
  module Client
    module V2
      class ProductAssignment < Base
        def self.table_name
          "product-assignments"
        end
      end
    end
  end
end
