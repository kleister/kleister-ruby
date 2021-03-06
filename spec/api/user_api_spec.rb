=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Kleister::UserApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'UserApi' do
  before do
    # run before each test
    @api_instance = Kleister::UserApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserApi' do
    it 'should create an instance of UserApi' do
      expect(@api_instance).to be_instance_of(Kleister::UserApi)
    end
  end

  # unit tests for append_user_to_mod
  # Assign a mod to user
  # @param user_id A user UUID or slug
  # @param user_mod The user mod data to assign
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'append_user_to_mod test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for append_user_to_pack
  # Assign a pack to user
  # @param user_id A user UUID or slug
  # @param user_pack The user pack data to assign
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'append_user_to_pack test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for append_user_to_team
  # Assign a team to user
  # @param user_id A user UUID or slug
  # @param user_team The user team data to assign
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'append_user_to_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_user
  # Create a new user
  # @param user The user data to create
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'create_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user
  # Delete a specific user
  # @param user_id A user UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'delete_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_from_mod
  # Remove a mod from user
  # @param user_id A user UUID or slug
  # @param user_mod The user mod data to delete
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'delete_user_from_mod test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_from_pack
  # Remove a pack from user
  # @param user_id A user UUID or slug
  # @param user_pack The user pack data to delete
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'delete_user_from_pack test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_from_team
  # Remove a team from user
  # @param user_id A user UUID or slug
  # @param user_team The user team data to delete
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'delete_user_from_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_mods
  # Fetch all mods assigned to user
  # @param user_id A user UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Array<UserMod>]
  describe 'list_user_mods test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_packs
  # Fetch all packs assigned to user
  # @param user_id A user UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Array<UserPack>]
  describe 'list_user_packs test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_teams
  # Fetch all teams assigned to user
  # @param user_id A user UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Array<TeamUser>]
  describe 'list_user_teams test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_users
  # Fetch all available users
  # @param [Hash] opts the optional parameters
  # @return [Array<User>]
  describe 'list_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for permit_user_mod
  # Update mod perms for user
  # @param user_id A user UUID or slug
  # @param user_mod The user mod data to update
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'permit_user_mod test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for permit_user_pack
  # Update pack perms for user
  # @param user_id A user UUID or slug
  # @param user_pack The user pack data to update
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'permit_user_pack test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for permit_user_team
  # Update team perms for user
  # @param user_id A user UUID or slug
  # @param user_team The user team data to update
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'permit_user_team test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for show_user
  # Fetch a specific user
  # @param user_id A user UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'show_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user
  # Update a specific user
  # @param user_id A user UUID or slug
  # @param user The user data to update
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'update_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
