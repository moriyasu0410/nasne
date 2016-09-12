# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nasne/version'

Gem::Specification.new do |spec|
  spec.name          = "nasne"
  spec.version       = Nasne::VERSION
  spec.authors       = ["moriyasu0410"]
  spec.email         = ["moriyasu0410@gmail.com"]

  spec.summary       = %q{nasne API connection.}
  spec.description   = %q{nasne API connection.}
  spec.homepage      = "https://github.com/moriyasu0410/nasne"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
