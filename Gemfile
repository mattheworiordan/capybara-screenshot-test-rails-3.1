source 'http://rubygems.org'

gem 'rails', '~>3.1'

gem 'sqlite3'

group :test do
  gem 'cucumber'
  gem 'cucumber-rails', :require => false
  gem 'capybara', '>=2.0'
  # gem 'capybara-webkit' # no support for Capybara 2 yet
  # gem 'poltergeist' # use poltergeist instead
  gem 'rspec'
end

group :development, :test do
  if RUBY_VERSION =~ /^1\.8\.[\d]+$/
    gem 'ruby-debug'
  else
    gem 'debugger'
  end
end

group :test, :development do
  gem 'rspec-rails'
end

group :test do
  gem 'minitest'
  gem 'mini_specunit'
end

group :test do
  gem 'capybara-screenshot', :path => '../gem'
end