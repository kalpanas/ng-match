# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ng/match/package'

Gem::Specification.new do |spec|
  spec.name          = Ng::Match::NAME
  spec.version       = Ng::Match::VERSION
  spec.authors       = [Ng::Match::AUTHOR["name"]]
  spec.email         = [Ng::Match::AUTHOR["email"]]
  spec.summary       = Ng::Match::DESCRIPTION
  spec.description   = Ng::Match::LONGDESCRIPTION
  spec.homepage      = Ng::Match::HOMEPAGE
  spec.license       = Ng::Match::LICENSE["type"]

  spec.files         = ["package.json", "LICENSE", "README.md"] + Dir["lib/**/*.rb"] + Dir["vendor/assets/javascripts/*.js"]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  
  spec.add_runtime_dependency "railties", ">= 3.1"
end
