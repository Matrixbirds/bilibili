Rails.application.config.middleware.use OmniAuth::Builder do
  provider :github, ENV['APP_KEY'], ENV['APP_SECRET']
end
