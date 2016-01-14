# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rubyraw/version'

Gem::Specification.new do |spec|
  spec.name          = "rubyraw"
  spec.version       = Rubyraw::VERSION
  spec.authors       = ["wolfmasa"]
  spec.email         = ["wolf.masa@gmail.com"]

  spec.summary       = %q{Decode raw file of Digital camera with dcraw.}
  spec.description   = %q{Decode raw file of Digital camera with dcraw as ruby gem. If you want to decode, please use this.}
  spec.homepage      = "https://github.com/wolfmasa/ruby-raw"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.extensions    = ["ext/rubyraw/extconf.rb"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rake-compiler"
  spec.add_development_dependency "minitest"
end
