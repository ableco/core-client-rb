require "core/client/version"

Dir[File.join(__dir__, "client", "v1", "*.rb")].each do |file|
  require file
end

Dir[File.join(__dir__, "client", "v2", "*.rb")].each do |file|
  require file
end

module Core
  module Client
    class Error < StandardError; end
    # Your code goes here...
  end
end
