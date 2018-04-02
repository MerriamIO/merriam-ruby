# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'merriam/version'

Gem::Specification.new do |s|
  s.name          = 'merriam'
  s.summary       = 'Language detect and translate library for Rails app'
  s.description   = 'Detect text language and translate text language in Rails Controller, Views, Model, Lib, etc'

  s.authors       = %w[Vajapravin CreoMark]
  s.email         = 'vajapravin23@gmail.com'

  s.files         = Dir['lib/**/*.rb']
  s.homepage      = 'https://github.com/merriamIO/merriam-ruby'
  s.license       = 'Apache 2.0'
  s.version       = Merriam::VERSION

  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.2'

  s.add_runtime_dependency 'http', '~> 0.7.3'
  s.add_development_dependency 'bundler', '~> 1.0'
end
