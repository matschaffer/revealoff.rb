# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'revealoff/version'

Gem::Specification.new do |gem|
  gem.name          = "revealoff"
  gem.version       = Revealoff::VERSION
  gem.authors       = ["Mat Schaffer"]
  gem.email         = ["mat@schaffer.me"]
  gem.description   = %q{Shows showoff slides using reveal.js}
  gem.summary       = %q{Shows showoff slides using reveal.js}
  gem.homepage      = ""

  manifest          = File.readlines("Manifest.txt").map(&:chomp)

  gem.files         = manifest
  gem.executables   = manifest.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = manifest.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
