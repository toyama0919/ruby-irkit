# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'irkit/version'

Gem::Specification.new do |spec|
  spec.name          = "irkit"
  spec.version       = IRKit::VERSION
  spec.authors       = ["Sho Hashimoto"]
  spec.email         = ["hashimoto@shokai.org"]
  spec.description   = %q{IRKit Client for Ruby}
  spec.summary       = spec.description
  spec.homepage      = "https://github.com/shokai/ruby-irkit"
  spec.license       = "MIT"

  spec.required_ruby_version = ">= 2.7.0"

  spec.files         = `git ls-files`.split($/).reject{|i| i=="Gemfile.lock" }
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.0"
  spec.add_development_dependency "rake", ">= 12.0"
  spec.add_development_dependency "minitest", ">= 5.0"

  spec.add_dependency "dnssd", ">= 3.0"
  spec.add_dependency "httparty", ">= 0.18"
  spec.add_dependency "hashie", ">= 4.0"
  spec.add_dependency "args_parser", ">= 0.2"
end
