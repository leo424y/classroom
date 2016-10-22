require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Classroom
  class Application < Rails::Application
    config.generators.assets = false
    config.generators.helper = false
  end
end
