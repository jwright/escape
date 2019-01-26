# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "escape/version"

Gem::Specification.new do |spec|
  spec.name          = "escape-room"
  spec.version       = Escape::VERSION
  spec.authors       = ["Jamie Wright"]
  spec.email         = ["jamie@brilliantfantastic.com"]

  spec.summary       = %q{A command line interface for asking questions to get out of an escape room}
  spec.description   = %q{Create your own quiz to reveal clues in an escape room.}
  spec.homepage      = "https://github.com/jwright/escape"
  spec.license       = "MIT"

  spec.required_ruby_version = "~> 2.5.0"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.executable    = "escape"

  spec.add_dependency "thor"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end
