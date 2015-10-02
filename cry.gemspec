# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "cry/version"

Gem::Specification.new do |spec|
  spec.name          = "cry"
  spec.version       = Cry::VERSION
  spec.authors       = ["Felix Krause"]
  spec.email         = ["cry@krausefx.com"]
  spec.summary       = Cry::DESCRIPTION
  spec.description   = Cry::DESCRIPTION
  spec.homepage      = "https://fastlane.tools"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.0.0"

  spec.files = Dir["lib/**/*"] + %w(bin/cry README.md LICENSE)

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'fastlane_core', '>= 0.19.0', '< 1.0.0' # all shared code and dependencies
  spec.add_dependency 'xcpretty' # pretty xcodebuild output
  spec.add_dependency 'terminal-table' # print out build information

  # Development only
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "fastlane", ">= 1.25.0" # yes, we use fastlane for testing
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rubocop"
  spec.add_development_dependency "rspec", "~> 3.1.0"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "yard", "~> 0.8.7.4"
  spec.add_development_dependency "webmock", "~> 1.19.0"
  spec.add_development_dependency "coveralls"
end
