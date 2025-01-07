# This file is copied to spec/ when you run 'rails generate rspec:install'
#require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)
abort("The Rails environment is running in production mode!") if Rails.env.production?
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!

   # Incluye helpers de Devise para pruebas de controladores
  config.include Devise::Test::ControllerHelpers, type: :controller
  # Incluye helpers de Devise para pruebas de solicitudes (request specs)
  config.include Devise::Test::IntegrationHelpers, type: :request
  # Opcional: Incluye helpers de Devise para pruebas de sistema (system specs)
  config.include Devise::Test::IntegrationHelpers, type: :system
end

