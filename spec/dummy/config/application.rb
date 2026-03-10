require "rails"
require "action_controller/railtie"
require "browsedown"

module Dummy
  class Application < Rails::Application
    config.root = File.expand_path("..", __dir__)
    config.eager_load = false
    config.secret_key_base = "test-secret-key-base-for-browsedown"
    config.hosts.clear
  end
end
