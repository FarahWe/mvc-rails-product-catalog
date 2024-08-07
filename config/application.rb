require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module MvcRailsProductCatalog
  class Application < Rails::Application
    config.load_defaults 7.1

    config.autoload_lib(ignore: %w(assets tasks))

    config.action_controller.allow_forgery_protection = false
  end
end
