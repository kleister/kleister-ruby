=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Kleister::PackApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PackApi' do
  before do
    # run before each test
    @api_instance = Kleister::PackApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PackApi' do
    it 'should create an instance of PackApi' do
      expect(@api_instance).to be_instance_of(Kleister::PackApi)
    end
  end

  # unit tests for append_build_to_version
  # Assign a version to a build
  # @param pack_id A pack UUID or slug
  # @param build_id A build UUID or slug
  # @param params The version data to append to build
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'append_build_to_version test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for append_pack_to_team
  # Assign a team to pack
  # @param pack_id A pack UUID or slug
  # @param params The pack team data to assign
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'append_pack_to_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for append_pack_to_user
  # Assign a user to pack
  # @param pack_id A pack UUID or slug
  # @param params The pack user data to assign
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'append_pack_to_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_build
  # Create a new build for a pack
  # @param pack_id A pack UUID or slug
  # @param params The build data to create
  # @param [Hash] opts the optional parameters
  # @return [Build]
  describe 'create_build test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_pack
  # Create a new pack
  # @param params The pack data to create
  # @param [Hash] opts the optional parameters
  # @return [Pack]
  describe 'create_pack test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_build
  # Delete a specific build for a pack
  # @param pack_id A pack UUID or slug
  # @param build_id A build UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_build test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_build_from_version
  # Unlink a version from a build
  # @param pack_id A pack UUID or slug
  # @param build_id A build UUID or slug
  # @param params The version data to unlink from build
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_build_from_version test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_pack
  # Delete a specific pack
  # @param pack_id A pack UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_pack test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_pack_from_team
  # Remove a team from pack
  # @param pack_id A pack UUID or slug
  # @param params The pack team data to delete
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_pack_from_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_pack_from_user
  # Remove a user from pack
  # @param pack_id A pack UUID or slug
  # @param params The pack user data to delete
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'delete_pack_from_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_build_versions
  # Fetch all versions assigned to build
  # @param pack_id A pack UUID or slug
  # @param build_id A build UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Array<BuildVersion>]
  describe 'list_build_versions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_builds
  # Fetch all available builds for a pack
  # @param pack_id A pack UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Array<Build>]
  describe 'list_builds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_pack_teams
  # Fetch all teams assigned to pack
  # @param pack_id A pack UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Array<TeamPack>]
  describe 'list_pack_teams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_pack_users
  # Fetch all users assigned to pack
  # @param pack_id A pack UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Array<UserPack>]
  describe 'list_pack_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_packs
  # Fetch all available packs
  # @param [Hash] opts the optional parameters
  # @return [Array<Pack>]
  describe 'list_packs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for permit_pack_team
  # Update team perms for pack
  # @param pack_id A pack UUID or slug
  # @param params The pack team data to update
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'permit_pack_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for permit_pack_user
  # Update user perms for pack
  # @param pack_id A pack UUID or slug
  # @param params The pack user data to update
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'permit_pack_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_build
  # Fetch a specific build for a pack
  # @param pack_id A pack UUID or slug
  # @param build_id A build UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Build]
  describe 'show_build test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_pack
  # Fetch a specific pack
  # @param pack_id A pack UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Pack]
  describe 'show_pack test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_build
  # Update a specific build for a pack
  # @param pack_id A pack UUID or slug
  # @param build_id A build UUID or slug
  # @param params The build data to update
  # @param [Hash] opts the optional parameters
  # @return [Build]
  describe 'update_build test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_pack
  # Update a specific pack
  # @param pack_id A pack UUID or slug
  # @param params The pack data to update
  # @param [Hash] opts the optional parameters
  # @return [Pack]
  describe 'update_pack test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end