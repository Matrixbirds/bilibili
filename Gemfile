if ENV['USE_OFFICIAL_GEM_SOURCE']
  source 'https://rubygems.org'
elsif ENV['taobao']
  source 'https://ruby.taobao.org'
else
  source 'https://gems.ruby-china.org'
end

ruby '2.3.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>= 5.0.0.beta3', '< 5.1'
# Use mysql as the database for Active Record
gem 'mysql2', '~> 0.4.4'
# react fontend framework
# gem 'react-rails', '~> 1.6.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
gem 'active_model_serializers', git: 'https://github.com/rails-api/active_model_serializers.git'
# Use ActiveModel has_secure_password
gem 'bcrypt', '~> 3.1.7'

gem 'omniauth-oauth2', '~> 1.4.0'
gem 'omniauth-github', '~> 1.1.2'

gem 'dotenv-rails', :groups => [:development, :test]
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
gem 'will_paginate', '~> 3.1.0'

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'byebug'
end

group :test do
  gem 'database_cleaner'
end

group :development do
  gem 'annotate'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
