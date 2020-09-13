Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV.fetch("TWITTER_KEY"), ENV.fetch("TWITTER_SECRET"), callback_url: "http://127.0.0.1/api/v1/auth/twitter/callback"
  provider :google_oauth2, ENV.fetch("GOOGLE_KEY"), ENV.fetch("GOOGLE_SECRET"), callback_url: "http://127.0.0.1/api/v1/auth/google/callback"
end
