# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'second_app/version'

Gem::Specification.new do |spec|
  spec.name          = "second_app"
  spec.version       = SecondApp::VERSION
  spec.authors       = ["dieze"]
  spec.email         = ["dieze51@gmail.com"]

  spec.summary       = "Second back application for the heroku modular demo."
  spec.homepage      = "https://github.com/dieze/heroku-modular-second_app-back"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "grape"
  spec.add_runtime_dependency "rack"
  spec.add_runtime_dependency "rack-test"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
