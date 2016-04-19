class ApplicationController < ActionController::API
  include AbstractController::Helpers
  include Authenticate
end
