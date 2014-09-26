ENV["RAILS_ENV"] ||= 'test'

require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

require 'capybara/rspec'
require 'capybara-screenshot/rspec'

# require 'capybara/poltergeist'
# Capybara.javascript_driver = :poltergeist

require 'spec_helper'

