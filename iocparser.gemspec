# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iocparser/version'

Gem::Specification.new do |spec|
  spec.name          = "iocparser"
  spec.version       = Iocparser::VERSION
  spec.authors       = ["Matteo Michelini"]
  spec.email         = ["matteo.michelini@gmail.com"]
  spec.description   = %q{Command line utility to query Mandiant IOC files}
  spec.summary       = %q{Command line utility to query Mandiant IOC files}
  spec.homepage      = "https://github.com/cor3ngine/iocparser"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
