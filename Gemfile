source 'https://rubygems.org'
ruby "2.0.0"

gem 'rails', '3.2.13'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development do
  gem "sqlite3"
  gem "quiet_assets"
  gem "letter_opener"
  gem "thin"
  gem "awesome_print"
  gem "better_errors"
  gem "binding_of_caller"
  gem "pry"
  gem "foreman", :require => false
end

group :development, :test do
  gem "rspec-rails"
  gem "database_cleaner"
  gem "dotenv-rails"
end

group :test do
  gem "capybara"
  gem "shoulda-matchers"
  gem "spork-rails"
end

gem "exception_notification", "2.6.1"
gem "slim"
gem "boarding_pass"
gem "pg", :group => :production
gem "puma"
gem "newrelic_rpm"
gem "active_attr"
gem "gibbon"   # MailChimp
gem "rails-settings-cached", "0.2.4"
gem "memcachier"
gem "dalli"
