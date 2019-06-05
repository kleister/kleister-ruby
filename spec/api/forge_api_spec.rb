=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'spec_helper'
require 'json'

# Unit tests for Kleister::ForgeApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ForgeApi' do
  before do
    # run before each test
    @api_instance = Kleister::ForgeApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ForgeApi' do
    it 'should create an instance of ForgeApi' do
      expect(@api_instance).to be_instance_of(Kleister::ForgeApi)
    end
  end

  # unit tests for append_forge_to_build
  # Assign a build to a Forge version
  # @param forge_id A forge UUID or slug
  # @param params The build data to append
  # @param [Hash] opts the optional parameters
  # @return [Array<Build>]
  describe 'append_forge_to_build test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_forge_from_build
  # Unlink a build from a Forge version
  # @param forge_id A forge UUID or slug
  # @param params The build data to unlink
  # @param [Hash] opts the optional parameters
  # @return [Array<Build>]
  describe 'delete_forge_from_build test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_forge_builds
  # Fetch the builds assigned to a Forge version
  # @param forge_id A forge UUID or slug
  # @param [Hash] opts the optional parameters
  # @return [Array<Build>]
  describe 'list_forge_builds test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_forges
  # Fetch the available Forge versions
  # @param [Hash] opts the optional parameters
  # @return [Array<Forge>]
  describe 'list_forges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_forges
  # Search for available Forge versions
  # @param forge_id A search token to search Forge versions
  # @param [Hash] opts the optional parameters
  # @return [Array<Forge>]
  describe 'search_forges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_forge
  # Update the available Forge versions
  # @param [Hash] opts the optional parameters
  # @return [GeneralError]
  describe 'update_forge test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
