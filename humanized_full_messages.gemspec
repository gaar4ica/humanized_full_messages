# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'humanized_full_messages/version'

Gem::Specification.new do |spec|
  spec.name          = "humanized_full_messages"
  spec.version       = HumanizedFullMessages::VERSION
  spec.authors       = ["Anna Kazakova (gaar4ica)"]
  spec.email         = ["gaar4ica@gmail.com"]
  spec.description   = "Gem enables to override error messages keys for pretty rendering"
  spec.summary       = "Simple gem for human readable error messages"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
