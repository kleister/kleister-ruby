=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.1.0

=end

# Common files
require 'kleister/api_client'
require 'kleister/api_error'
require 'kleister/version'
require 'kleister/configuration'

# Models
require 'kleister/models/auth_login'
require 'kleister/models/auth_token'
require 'kleister/models/auth_verify'
require 'kleister/models/build'
require 'kleister/models/build_version'
require 'kleister/models/build_version_params'
require 'kleister/models/forge'
require 'kleister/models/forge_build_params'
require 'kleister/models/general_error'
require 'kleister/models/minecraft'
require 'kleister/models/minecraft_build_params'
require 'kleister/models/mod'
require 'kleister/models/mod_team_params'
require 'kleister/models/mod_user_params'
require 'kleister/models/pack'
require 'kleister/models/pack_team_params'
require 'kleister/models/pack_user_params'
require 'kleister/models/profile'
require 'kleister/models/team'
require 'kleister/models/team_mod'
require 'kleister/models/team_mod_params'
require 'kleister/models/team_pack'
require 'kleister/models/team_pack_params'
require 'kleister/models/team_user'
require 'kleister/models/team_user_params'
require 'kleister/models/user'
require 'kleister/models/user_mod'
require 'kleister/models/user_mod_params'
require 'kleister/models/user_pack'
require 'kleister/models/user_pack_params'
require 'kleister/models/user_team_params'
require 'kleister/models/validation_error'
require 'kleister/models/validation_error_errors'
require 'kleister/models/version'
require 'kleister/models/version_build_params'

# APIs
require 'kleister/api/auth_api'
require 'kleister/api/forge_api'
require 'kleister/api/minecraft_api'
require 'kleister/api/mod_api'
require 'kleister/api/pack_api'
require 'kleister/api/profile_api'
require 'kleister/api/team_api'
require 'kleister/api/user_api'

module Kleister
  class << self
    # Customize default settings for the SDK using block.
    #   Kleister.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
