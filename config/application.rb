require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Pomodoroleaderboard
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    # 
    config.load_defaults 5.1
    config.api_only = true
    config.debug_exception_response_format = :default
    #config.debug_exception_response_format = :api

  	config.assets.paths << Rails.root.join("vendor","javascripts")
  	config.assets.paths << Rails.root.join("vendor", "stylesheets")
  	config.assets.paths << Rails.root.join("vendor", "images")
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
