# Kleister: SDK for Ruby

[![General Workflow](https://github.com/kleister/kleister-ruby/actions/workflows/general.yml/badge.svg)](https://github.com/kleister/kleister-ruby/actions/workflows/general.yml) [![Join the Matrix chat at https://matrix.to/#/#kleister:matrix.org](https://img.shields.io/badge/matrix-%23kleister%3Amatrix.org-7bc9a4.svg)](https://matrix.to/#/#kleister:matrix.org) [![Codacy Badge](https://app.codacy.com/project/badge/Grade/032f6220e14a4942931d5a9beef13243)](https://app.codacy.com/gh/kleister/kleister-ruby/dashboard?utm_source=gh&utm_medium=referral&utm_content=&utm_campaign=Badge_grade) [![Gem Version](https://badge.fury.io/rb/kleister.svg)](https://badge.fury.io/rb/kleister)

This repository provides a client SDK for Ruby. This SDK is automatically
generated by the [OpenAPI Generator][generator] project:

-   API version: 1.0.0-alpha1
-   Package version: 1.6.1
-   Build package: org.openapitools.codegen.languages.RubyClientCodegen

For more information, please visit [https://kleister.eu](https://kleister.eu)

## Installation

### Build a gem

If you want to build an unreleased version of this library you are able to build
it locally with the following command, afterwards you should be able to install
the built gem:

```console
gem build kleister.gemspec
gem install ./kleister-1.6.1.gem
```

### Install from Rubygems

If you want to use a a properly released version hosted Rubygems you just need
to add the following line to your Gemfile:

```ruby
gem 'kleister', '~> 1.6.1'
```

### Install from Git

If the gem is hosted at a git repository, then add the following in the Gemfile:

```ruby
gem 'kleister', :git => 'https://github.com/kleister/kleister-ruby.git'
```

## Security

If you find a security issue please contact
[kleister@webhippie.de](mailto:kleister@webhippie.de) first.

## Contributing

Fork -> Patch -> Push -> Pull Request

## Authors

-   [Thomas Boerger](https://github.com/tboerger)

## License

Apache-2.0

## Copyright

```console
Copyright (c) 2018 Thomas Boerger <thomas@webhippie.de>
```

[generator]: https://openapi-generator.tech
