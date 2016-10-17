# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'faraday/interval/version'

Gem::Specification.new do |spec|
  spec.name          = "faraday-interval"
  spec.version       = Faraday::Interval::VERSION
  spec.authors       = ["kei-s"]
  spec.email         = ["kei.shiratsuchi@gmail.com"]

  spec.summary       = %q{Faraday middleware that waits by interval}
  spec.description   = %q{Faraday middleware that waits by interval}
  spec.homepage      = "https://github.com/kei-s/faraday-interval"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 0.8.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
