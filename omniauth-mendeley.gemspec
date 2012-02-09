# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'omniauth/mendeley/version'

Gem::Specification.new do |s|
  s.name     = 'omniauth-mendeley'
  s.version  = OmniAuth::Mendeley::VERSION
  s.authors  = ['Logan Lowell']
  s.email    = ['fractaloop@thefrontside.net']
  s.summary  = 'Mendeley strategy for OmniAuth'
  s.homepage = 'https://github.com/fractaloop/omniauth-mendeley'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_runtime_dependency 'omniauth-oauth', '~> 1.0.0'

  s.add_development_dependency 'rspec', '~> 2.7.0'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'webmock'
  s.add_development_dependency 'rack-test'
end
