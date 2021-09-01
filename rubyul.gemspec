# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "rubyul/version"

Gem::Specification.new do |spec|
  spec.name          = "rubyul"
  spec.version       = Rubyul::VERSION
  spec.authors       = ["William Denton"]
  spec.email         = ["wtd@pobox.com"]

  spec.summary       = "Small R helper functions for York University Libraries."
  spec.homepage      = "https://github.com/yorkulibraries/rubyul"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rake", "~> 12.3.3"

  spec.license = "GPL-3.0+"
end
