# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'odeon_api/version'

Gem::Specification.new do |spec|
  spec.name          = "odeon_api"
  spec.version       = OdeonApi::VERSION
  spec.authors       = ["Ahmet Abdi"]
  spec.email         = ["ahmetabdi@gmail.com"]

  spec.summary       = 'ODEON API (unofficial)'
  spec.description   = 'ODEON API (unofficial)'
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "awesome_print"

  spec.add_runtime_dependency 'representable'
  spec.add_runtime_dependency 'multi_json'
  spec.add_runtime_dependency 'rest-client'
end
