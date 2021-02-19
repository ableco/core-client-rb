require_relative "./base"

module Core
  module Client
    module V2
      class ProductInvestment < Base
        def self.table_name
          "product-investments"
        end
      end
    end
  end
end
