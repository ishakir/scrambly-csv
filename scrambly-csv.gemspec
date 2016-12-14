# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scrambly-csv/version'

Gem::Specification.new do |spec|
  spec.name          = 'scrambly-csv'
  spec.version       = ScramblyCsv::VERSION
  spec.authors       = ['ishakir']
  spec.email         = ['imran.pshakir@gmail.com']
  spec.summary       = 'A library that ensures that users will read your CSV files properly.'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9.2'

  spec.add_dependency 'radix', '~> 2.2'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'magic_encoding'
end
