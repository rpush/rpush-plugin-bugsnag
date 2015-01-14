# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpush/plugin/bugsnag/version'

Gem::Specification.new do |spec|
  spec.name          = "rpush-plugin-bugsnag"
  spec.version       = Rpush::Plugin::Bugsnag::VERSION
  spec.authors       = ["Ian Leitch"]
  spec.email         = ["port001@gmail.com"]
  spec.summary       = %q{Bugsnag plugin for Rpush.}
  spec.description   = %q{Report Rpush errors to Bugsnag.}
  spec.homepage      = "https://github.com/rpush/rpush-plugin-bugsnag"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bugsnag"
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
