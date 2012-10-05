$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "crowdint_auth/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "crowdint_auth"
  s.version     = CrowdintAuth::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of CrowdintAuth."
  s.description = "TODO: Description of CrowdintAuth."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.8"
  s.add_dependency "devise"

  s.add_development_dependency 'rspec-rails'
end
