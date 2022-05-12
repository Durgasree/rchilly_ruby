$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rchilli_ruby/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "rchilli_ruby"
  spec.version     = RchilliRuby::VERSION
  spec.authors     = ["Durgasree"]
  spec.email       = ["shree1499@gmail.com"]
  spec.homepage    = "https://www.rchilli.com/"
  spec.summary     = "Rchilli is used to parse documents like resumes."
  spec.description = "Rchilli is used to parse documents like resumes."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  spec.test_files = Dir["spec/**/*"]

  spec.add_dependency "rails", "> 4.0.0"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'rspec-rails'
  spec.add_development_dependency 'httparty'
  spec.add_development_dependency 'rubocop'

end
