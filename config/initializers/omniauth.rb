Rails.application.config.middleware.use OmniAuth::Builder do
    provider :logora, Rails.application.credentials.dig(:logora, :api_link)
end