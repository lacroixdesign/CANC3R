source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem "rail_pass"
group :development do
  gem "quiet_assets"
  gem "letter_opener"
  gem "thin"
  gem "awesome_print"
  gem "better_errors"
  gem "binding_of_caller"
  gem "pry"
end

group :development, :test do
  gem "rspec-rails"
  gem "database_cleaner"
  gem "dotenv"
end

group :test do
  gem "capybara"
  gem "shoulda-matchers"
  gem "spork-rails"
end

gem "exception_notification", "2.6.1"
gem "slim"
gem "boarding_pass"
gem "foreman"
gem "pg", :group => :production
gem "sqlite3", :group => :development
gem "unicorn"
gem "newrelic_rpm"