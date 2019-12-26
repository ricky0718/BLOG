require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module BLOG
  class Application < Rails::Application
    config.i18n.default_locale = :ja
    config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.yml').to_s]
    config.assets.initialize_on_precompile = false
    # config.generators do |g|
    #   g.stylesheets false
    #   g.javascripts false
    #   g.helper false
    #   g.test_framework false
      
  end
end
