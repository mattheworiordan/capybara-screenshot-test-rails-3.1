ENV["RAILS_ENV"] = "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require 'capybara/rails'
require 'minitest/autorun'
require 'capybara-screenshot/minitest'

module ActionDispatch
  class IntegrationTest
    include Capybara::DSL
  end
end



