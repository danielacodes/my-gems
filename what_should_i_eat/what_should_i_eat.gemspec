lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "what_should_i_eat/version"

Gem::Specification.new do |spec|
  spec.name          = "what_should_i_eat"
  spec.version       = WhatShouldIEat::VERSION
  spec.authors       = ["Daniela"]
  spec.email         = ["danielavitosova@seznam.cz"]

  spec.summary       = 'Book of recipes'
  spec.description   = 'It shows you recipes.'
  spec.homepage      = 'http://github.com/danielacodes'
  spec.license       = "MIT"

  #spec.metadata["allowed_push_host"] = "Set to 'http://mygemserver.com'"

  #spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = 'http://github.com/danielacodes'
  #spec.metadata["changelog_uri"] = "Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = ["lib/what_should_i_eat.rb", "lib/what_should_i_eat/printing.rb"]
  spec.bindir        = "exe"
  #spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.executables << "what_should_i_eat"
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
end
