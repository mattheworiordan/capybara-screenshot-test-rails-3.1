source 'http://rubygems.org'

gem 'rails', '~>3.1'

gem 'sqlite3'

group :test do
  gem 'cucumber'
  gem 'cucumber-rails', :require => false
  gem 'capybara'
  gem 'capybara-webkit'
  # gem 'capybara-screenshot', '~>0.2.2'
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
