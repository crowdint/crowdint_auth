require "crowdint_auth/engine"
require "devise"
require "omniauth-google-apps"

module CrowdintAuth
  autoload :Devise, 'crowdint_auth/devise/failure_app'
end
