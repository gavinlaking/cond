# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cond/version'

Gem::Specification.new do |spec|
  spec.name          = "cond"
  spec.version       = Cond::VERSION
  spec.authors       = ["Gavin Laking"]
  spec.email         = ["gavinlaking@gmail.com"]
  spec.summary       = "Conditional, begone!"
  spec.homepage      = "http://www.gavinlaking.name/"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
