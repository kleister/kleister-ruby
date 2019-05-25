=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.1-SNAPSHOT

=end

require 'spec_helper'
require 'json'

# Unit tests for Kleister::AuthApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'AuthApi' do
  before do
    # run before each test
    @api_instance = Kleister::AuthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthApi' do
    it 'should create an instance of AuthApi' do
      expect(@api_instance).to be_instance_of(Kleister::AuthApi)
    end
  end

  # unit tests for login_user
  # Authenticate an user by credentials
  # @param params 
  # @param [Hash] opts the optional parameters
  # @return [AuthToken]
  describe 'login_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for refresh_auth
  # Refresh an auth token before it expires
  # @param [Hash] opts the optional parameters
  # @return [AuthToken]
  describe 'refresh_auth test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for verify_auth
  # Verify validity for an authentication token
  # @param token A token that have to be checked
  # @param [Hash] opts the optional parameters
  # @return [AuthVerify]
  describe 'verify_auth test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end