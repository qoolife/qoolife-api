# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'qoolife_api/version'

Gem::Specification.new do |spec|
  spec.name          = "qoolife_api"
  spec.version       = QoolifeApi::VERSION
  spec.authors       = ["David Gil"]
  spec.email         = ["dgilperez@qoolife.com"]
  spec.summary       = %q{Qoolife API Ruby client}
  spec.description   = %q{Ruby wrapper for the Qoolife API, so you can easily plug it into your App}
  spec.homepage      = "https://github.com/qoolife/qoolife-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency 'activeresource', '~> 4.0'
end
