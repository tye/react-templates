# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'react-templates/version'

Gem::Specification.new do |spec|
  spec.name          = "react-templates"
  spec.version       = ReactTemplates::VERSION
  spec.authors       = ["tye"]
  spec.email         = ["tye@tye.ca"]
  spec.summary       = %q{Use React Templates with the assets pipeline.}
  spec.description   = %q{Use React Templates with the assets pipeline. https://wix.github.io/react-templates/}
  spec.homepage      = "https://github.com/tye/react-templates"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'rails', '>= 4.2.0'
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 10.4', '>= 10.4.2'
  spec.add_development_dependency "rspec", '~> 3.1', '>= 3.1.0'
  #spec.add_development_dependency 'guard-rspec', '~> 0'
  spec.add_development_dependency 'sqlite3'
end

