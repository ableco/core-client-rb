require_relative "./base"

module Core
  module Client
    module V2
      class ProductRevenue < Base
        def self.table_name
          "product-revenues"
        end
      end
    end
  end
end
