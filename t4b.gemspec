# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 't4b/version'

Gem::Specification.new do |spec|
  spec.name          = "t4b"
  spec.version       = Time4Break::VERSION
  spec.authors       = ["Pavel Redics"]
  spec.email         = ["pavel.redics@gmail.com"]
  spec.summary       = "This gem will tell you about break"
  spec.description   = "Run in terminal to see if you need a break or not"
  spec.license       = "MIT"

  # spec.files         = `git ls-files -z`.split("\n")
  spec.files.grep(%r{^bin/}) { |f| f[3..-1] }
  spec.executables   = []
  # spec.executables   << 't4b'
  # spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
