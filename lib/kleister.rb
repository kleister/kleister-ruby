# Kleister OpenAPI
#
# API definition for Kleister, manage mod packs for Minecraft
#
# The version of the OpenAPI document: 1.0.0-alpha1
# Contact: kleister@webhippie.de
# Generated by: https://openapi-generator.tech
# Generator version: 7.13.0
#

# Common files
require 'kleister/api_client'
require 'kleister/api_error'
require 'kleister/version'
require 'kleister/configuration'

# Models
require 'kleister/models/attach_build_to_version_request'
require 'kleister/models/attach_minecraft_to_build_request'
require 'kleister/models/auth_token'
require 'kleister/models/auth_verify'
require 'kleister/models/build'
require 'kleister/models/build_version'
require 'kleister/models/create_build_request'
require 'kleister/models/create_group_request'
require 'kleister/models/create_mod_request'
require 'kleister/models/create_pack_request'
require 'kleister/models/create_user_request'
require 'kleister/models/create_version_request'
require 'kleister/models/delete_group_from_mod_request'
require 'kleister/models/delete_group_from_pack_request'
require 'kleister/models/delete_pack_from_group_request'
require 'kleister/models/delete_pack_from_user_request'
require 'kleister/models/fabric'
require 'kleister/models/forge'
require 'kleister/models/group'
require 'kleister/models/group_mod'
require 'kleister/models/group_pack'
require 'kleister/models/list_build_versions200_response'
require 'kleister/models/list_builds200_response'
require 'kleister/models/list_fabric_builds200_response'
require 'kleister/models/list_fabrics200_response'
require 'kleister/models/list_forge_builds200_response'
require 'kleister/models/list_forges200_response'
require 'kleister/models/list_group_mods200_response'
require 'kleister/models/list_group_packs200_response'
require 'kleister/models/list_group_users200_response'
require 'kleister/models/list_groups200_response'
require 'kleister/models/list_minecraft_builds200_response'
require 'kleister/models/list_minecrafts200_response'
require 'kleister/models/list_mod_groups200_response'
require 'kleister/models/list_mod_users200_response'
require 'kleister/models/list_mods200_response'
require 'kleister/models/list_neoforge_builds200_response'
require 'kleister/models/list_neoforges200_response'
require 'kleister/models/list_pack_groups200_response'
require 'kleister/models/list_pack_users200_response'
require 'kleister/models/list_packs200_response'
require 'kleister/models/list_providers200_response'
require 'kleister/models/list_quilt_builds200_response'
require 'kleister/models/list_quilts200_response'
require 'kleister/models/list_user_groups200_response'
require 'kleister/models/list_user_mods200_response'
require 'kleister/models/list_user_packs200_response'
require 'kleister/models/list_users200_response'
require 'kleister/models/list_version_builds200_response'
require 'kleister/models/list_versions200_response'
require 'kleister/models/login_auth_request'
require 'kleister/models/minecraft'
require 'kleister/models/mod'
require 'kleister/models/mod_avatar'
require 'kleister/models/neoforge'
require 'kleister/models/notification'
require 'kleister/models/pack'
require 'kleister/models/pack_avatar'
require 'kleister/models/permit_group_mod_request'
require 'kleister/models/permit_group_pack_request'
require 'kleister/models/permit_pack_group_request'
require 'kleister/models/permit_pack_user_request'
require 'kleister/models/profile'
require 'kleister/models/provider'
require 'kleister/models/quilt'
require 'kleister/models/redirect_auth_request'
require 'kleister/models/update_profile_request'
require 'kleister/models/update_user_request'
require 'kleister/models/user'
require 'kleister/models/user_auth'
require 'kleister/models/user_group'
require 'kleister/models/user_mod'
require 'kleister/models/user_pack'
require 'kleister/models/validation'
require 'kleister/models/version'
require 'kleister/models/version_file'

# APIs
require 'kleister/api/auth_api'
require 'kleister/api/fabric_api'
require 'kleister/api/forge_api'
require 'kleister/api/group_api'
require 'kleister/api/minecraft_api'
require 'kleister/api/mod_api'
require 'kleister/api/neoforge_api'
require 'kleister/api/pack_api'
require 'kleister/api/profile_api'
require 'kleister/api/quilt_api'
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
