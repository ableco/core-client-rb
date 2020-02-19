require_relative "./base"

module Core
  module Client
    module V2
      class ProjectRole < Base
        def self.table_name
          "project-roles"
        end
      end
    end
  end
end