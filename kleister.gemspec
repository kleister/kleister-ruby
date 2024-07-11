$LOAD_PATH.push File.expand_path('lib', __dir__)
require 'kleister/version'

Gem::Specification.new do |s|
  s.name = 'kleister'
  s.version = Kleister::VERSION
  s.platform = Gem::Platform::RUBY

  s.authors = ['Thomas Boerger']
  s.email = ['thomas@webhippie.de']
  s.homepage = 'https://github.com/kleister/kleister-ruby'
  s.summary = 'Manage mod packs for Minecraft'
  s.description = 'OpenAPI client for Kleister'
  s.license = 'Apache-2.0'

  s.files = ['CHANGELOG.md', 'CONTRIBUTING.md', 'DCO', 'README.md', 'LICENSE'] + Dir.glob('lib/**/*')
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.6'

  s.add_dependency 'faraday', '~> 2.9.0'
  s.add_dependency 'faraday-multipart', '~> 1.0.4'
  s.add_dependency 'marcel', '~> 1.0.4'

  s.metadata['rubygems_mfa_required'] = 'true'
end
