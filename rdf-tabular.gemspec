#!/usr/bin/env ruby -rubygems
# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.version               = File.read('VERSION').chomp
  gem.date                  = File.mtime('VERSION').strftime('%Y-%m-%d')

  gem.name                  = "rdf-tabular"
  gem.homepage              = "https://github.com/ruby-rdf/rdf-tabular"
  gem.license               = 'Unlicense'
  gem.summary               = "Tabular Data RDF Reader and JSON serializer."
  gem.description           = "RDF::Tabular processes tabular data with metadata creating RDF or JSON output."

  gem.authors               = ['Gregg Kellogg']
  gem.email                 = 'public-rdf-ruby@w3.org'

  gem.platform              = Gem::Platform::RUBY
  gem.files                 = %w(AUTHORS README.md UNLICENSE VERSION) + Dir.glob('etc/*') + Dir.glob('lib/**/*.rb')
  gem.require_paths         = %w(lib)
  gem.extensions            = %w()
  gem.test_files            = Dir.glob('spec/*.rb') + Dir.glob('spec/data/**')

  gem.required_ruby_version = '>= 2.6'
  gem.requirements          = []
  gem.add_runtime_dependency     'bcp47',           '~> 0.3', '>= 0.3.3'
  gem.add_runtime_dependency     'rdf',             '~> 3.2'
  gem.add_runtime_dependency     'rdf-vocab',       '~> 3.2'
  gem.add_runtime_dependency     'rdf-xsd',         '~> 3.2'
  gem.add_runtime_dependency     'json-ld',         '~> 3.2'
  gem.add_runtime_dependency     'addressable',     '~> 2.8'
  gem.add_development_dependency 'nokogiri',        '~> 1.12'
  gem.add_development_dependency 'rspec',           '~> 3.10'
  gem.add_development_dependency 'rspec-its',       '~> 1.3'
  gem.add_development_dependency 'rdf-isomorphic',  '~> 3.2'
  gem.add_development_dependency 'rdf-spec',        '~> 3.2'
  gem.add_development_dependency 'rdf-turtle',      '~> 3.1'
  gem.add_development_dependency 'sparql',          '~> 3.2'
  gem.add_development_dependency 'webmock',         '~> 3.14'
  gem.add_development_dependency 'yard' ,           '~> 0.9'

  gem.post_install_message  = nil
end
