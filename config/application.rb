require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Classroom
  class Application < Rails::Application
  end
end
