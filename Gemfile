source 'http://gems.github.com'
source 'http://rubygems.org'

gem 'rails', '> 3.2.0'

# variations from issue https://github.com/mattheworiordan/capybara-screenshot/issues/32
gem 'sqlite3'

# gem 'mysql2' # I don't have MySQL locally
gem 'mongrel', '>= 1.2.0.pre2'
gem 'sorcery'
gem 'active_enum'
gem 'jquery-rails'
gem 'bcrypt-ruby'
gem 'execjs', '>= 1.4.0'
gem 'activeadmin'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
  gem 'compass-rails', '1.0.1'
  gem 'sassy-buttons'
  gem 'compass-foundation', '0.1.1'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'fabrication', :git => "git://github.com/paulelliott/fabrication.git"
  # gem 'ruby-debug19', :require => 'ruby-debug' # can't get this to compile
  gem 'debugger'
  gem 'capybara'
  gem 'capybara-screenshot', :path => '../gem'
end

group :development do
  gem 'hirb'
end