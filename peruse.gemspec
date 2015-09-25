# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'peruse/version'

Gem::Specification.new do |spec|
  spec.name          = 'peruse'
  spec.version       = Peruse::VERSION
  spec.authors       = ['mickfeech']
  spec.email         = ['cmcfee@kent.edu']

  spec.summary       = %q{Plex API for Ruby}
  spec.description   = %q{Gem that allows you to utilize the Plex APIs to do basic functions}
  spec.homepage      = 'https://github.com/mickfeech/peruse'
  spec.license       = 'MIT'

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
  #  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
  #  raise 'RubyGems 2.0 or newer is required to protect against public gem pushes.'
  #end

  spec.files         = Dir['**/*'].keep_if { |file| File.file?(file) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'rest-client'
  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'yard'
  spec.add_development_dependency 'webmock'
end
