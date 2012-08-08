source 'http://rubygems.org'

gem 'rails', '~>3.1'

gem 'sqlite3'

group :test do
  gem 'cucumber'
  gem 'cucumber-rails'
  gem 'capybara', '1.1.2'
  gem 'capybara-webkit', '0.12.1'
  gem 'capybara-screenshot', '~>0.2.2'
  gem 'rspec', '2.10.0'
  gem 'rspec-rails'
end

group :development, :test do
  if RUBY_VERSION =~ /^1\.8\.[\d]+$/
    gem 'ruby-debug'
  else
    gem 'debugger'
  end
end