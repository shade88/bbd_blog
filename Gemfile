source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
  gem "sqlite3"
end

group :development, :test do
  gem "sqlite3"

  gem "rspec-rails"
  gem 'factory_girl_rails'
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "webrat"

end

group :test do
  gem 'faker'
  #gem 'capybara'
  #gem 'guard-rspec'
  #gem 'launchy'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'
gem 'execjs'
gem 'devise', '>= 2.0.0'
gem "cancan"
gem 'bootstrap-sass'
#gem 'simple-private-messages', '0.0.0', :git => 'git://github.com/jongilbraith/simple-private-messages.git'
#gem 'therubyracer'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
#gem 'debugger'
#gem 'ruby-debug-ide'
#gem 'ruby-debug-base19x'
