$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ecom/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ecom"
  s.version     = Ecom::VERSION
  s.authors     = ["askl56"]
  s.email       = ["amscott@openmailbox.org"]
  s.homepage    = "http://github.com/askl56/Seller"
  s.summary     = "A rails engine for ecommerce"
  s.description = "A complete ecommerce application within a gem"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.1"
  s.add_dependency "mongoid", '4.0.2'
  s.add_dependency "devise"
  s.add_dependency "mongoid-slug"
  s.add_dependency "carrierwave"
  s.add_dependency "carrierwave-mongoid"
  s.add_dependency "rubocop"
end
