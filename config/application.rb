require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SeeMe
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.assets.paths << Rails.root.join("app", "assets", "fonts")
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
    config.i18n.default_locale = :fr
    config.i18n.available_locales = [:fr, :en, :nl, :ar ]

    # For version 1.1.0 and above of the `i18n` gem:
    config.i18n.fallbacks = [I18n.default_locale]
    # Below version 1.1.0 of the `i18n` gem:
    config.i18n.fallbacks = true
  end
end
