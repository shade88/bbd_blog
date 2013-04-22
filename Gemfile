source 'https://rubygems.org'

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :production do
  gem "sqlite3", '1.3.7'
end

group :development, :test do
  gem "sqlite3", '1.3.7'

  gem "rspec-rails" , '2.13.0'
  gem 'factory_girl_rails', '4.2.1'
  gem "cucumber-rails", '1.3.1', :require => false
  gem "database_cleaner", '0.9.1'
  gem "webrat", '0.7.3'

end

group :test do
  gem 'faker', '1.1.2'
  gem 'capybara', '2.0.3'
  #gem 'guard-rspec', ''
  #gem 'launchy', ''
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', '0.11.4', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.2.1'
gem 'execjs', '1.4.0'
gem 'devise', '2.2.3'
gem "cancan", '1.6.9'
gem 'bootstrap-sass', '2.3.1.0'
gem "paperclip", "~> 3.0"
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
