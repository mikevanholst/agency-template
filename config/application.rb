require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Agency
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

# Check paths in rails console with "Rails.application.config.assets.paths"

    config.assets.paths << Rails.root.join("vendor", "assets", "startbootstrap", "img")
    config.assets.paths << Rails.root.join("vendor", "assets", "startbootstrap", "scss")
    config.assets.paths << Rails.root.join("vendor", "assets", "startbootstrap", "js")
    config.assets.paths << Rails.root.join("vendor", "assets", "startbootstrap", "lib", "tether")
    config.assets.paths << Rails.root.join("vendor", "assets", "startbootstrap", "lib", "font-awesome", "scss")
    config.assets.paths << Rails.root.join("vendor", "assets", "startbootstrap", "lib", "font-awesome", "fonts")
    config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
  end
end

