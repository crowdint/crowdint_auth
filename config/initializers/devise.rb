require 'devise'
Devise.setup do |config|
  config.omniauth :google_apps, :domain => 'crowdint.com',
      :strategy => OmniAuth::Strategies::GoogleApps
end
