require "ostruct"
require "rest-client"
require "rack/utils"
require "active_support/inflector"

module Core
  module Client
    module V1
      class Base < OpenStruct
        class << self
          def client
            @client ||= RestClient::Resource.new(
              "https://core.able.co/api",
              headers: { "Authorization" => "Bearer #{ENV['CORE_API_TOKEN']}" }
            )
          end

          def all
            where({})
          end

          def first
            all.first
          end

          def last
            all.last
          end

          def count
            all.count
          end

          def find(id)
            new(get("#{table_name}/#{id}"))
          end

          def where(conditions)
            get(table_name, conditions).map do |item|
              new(item)
            end
          end

          private

          def get(path, params = {})
            suburl = "#{path}?#{Rack::Utils.build_query(params)}"

            JSON.parse(client[suburl].get.body)
          end

          def table_name
            ActiveSupport::Inflector.tableize(self.name).split("/").pop
          end
        end
      end
    end
  end
end
