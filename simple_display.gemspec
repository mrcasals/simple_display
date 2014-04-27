# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_display/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_display"
  spec.version       = SimpleDisplay::VERSION
  spec.authors       = ["Marc Riera"]
  spec.email         = ["mrc2407@gmail.com"]
  spec.description   = %q{Display your Rails models easily}
  spec.summary       = %q{Display your Rails models easily}
  spec.homepage      = "https://github.com/mrcasals/simple_display"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
