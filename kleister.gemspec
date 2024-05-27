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
  s.test_files = Dir.glob('spec/**/*')
  s.require_paths = ['lib']

  s.required_ruby_version = '>= 2.6'

  s.add_runtime_dependency 'faraday', '>= 1.0.1', '< 3.0'
  s.add_runtime_dependency 'faraday-multipart'
  s.add_runtime_dependency 'marcel'

  s.metadata['rubygems_mfa_required'] = 'true'
end
