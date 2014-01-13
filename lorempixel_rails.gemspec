$:.push File.expand_path("../lib", __FILE__)

require "lorempixel_rails/version"

Gem::Specification.new do |s|
  s.name        = "lorempixel_rails"
  s.version     = LorempixelRails::VERSION
  s.authors     = ["Florian Nitschmann"]
  s.email       = ["f.nitschmann@googlemail.com"]
  s.homepage    = "https://github.com/fnitschmann/lorempixel_rails"
  s.summary     = "Custom image placeholders for Ruby on Rails 4 views"
  s.description = "Custom image placeholders for Ruby on Rails 4 views with pictures provided by http://lorempixel.com"

  s.files = Dir["{app,config,db,lib}/**/*", "Rakefile", "README.md", "LICENSE"]
  s.test_files = Dir["sepc/**/*"]

  s.add_dependency "rails", ">= 4.0.0"

  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "spork"
  s.add_development_dependency "pry"
end
