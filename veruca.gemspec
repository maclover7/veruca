# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'veruca/version'

Gem::Specification.new do |spec|
  spec.name          = "veruca"
  spec.version       = Veruca::VERSION
  spec.authors       = ["Jon Moss"]
  spec.email         = ["me@jonathanmoss.me"]

  spec.summary       = %q{Make your tests run faster!}
  spec.description   = %q{Make your tests run faster!}
  spec.homepage      = "https://github.com/maclover7/veruca"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
