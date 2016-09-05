require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module BbsExample
  class Application < Rails::Application
    config.i18n.default_locale = :ja
    config.time_zone = 'Asia/Tokyo'
  end
end
