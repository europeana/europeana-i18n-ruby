# frozen_string_literal: true

$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'europeana/i18n/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'europeana-i18n'
  s.version     = Europeana::I18n::VERSION
  s.authors     = ['Richard Doe']
  s.email       = ['richard.doe@europeana.eu']
  s.summary     = 'I18n for Europeana Rails apps'
  s.homepage    = 'https://github.com/europeana/europeana-i18n-ruby'
  s.license     = 'EUPL-1.1'

  s.files = Dir['{config,lib}/**/*', '.rubocop.yml', 'Gemfile', 'LICENSE.md', 'README.md']

  s.required_ruby_version = '>= 2.1.0'

  s.add_development_dependency 'minitest-reporters'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rubocop', '0.49.1'
end
