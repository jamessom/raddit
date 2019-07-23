require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(*Rails.groups)

module Raddit
  class Application < Rails::Application
    config.active_record.raise_in_transactional_callbacks = true

    config.generators do |g|
      g.helper false
      g.stylesheets false
      g.javascripts false
      g.view_specs false
    end
  end
end
