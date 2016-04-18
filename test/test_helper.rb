ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

# DatabaseCleaner.clean_with(:truncation)
class ActiveSupport::TestCase
  include FactoryGirl::Syntax::Methods
  ActiveRecord::Migration.check_pending!
  DatabaseCleaner.strategy = :truncation
  setup do
    DatabaseCleaner.start
  end
  teardown do
    DatabaseCleaner.clean
  end
end
