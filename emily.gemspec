# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'emily/version'

Gem::Specification.new do |gem|
  gem.name          = "emily"
  gem.version       = Emily::VERSION
  gem.authors       = ["John (Jack) Brown"]
  gem.email         = ["jack@brownjohnf.com"]
  gem.description   = %q{Sleek sexy framework.}
  gem.summary       = %q{Sleek sexy rack-based framework.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  # set dependencies
  gem.add_runtime_dependency "rack"
end
