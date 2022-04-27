=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Kleister::TeamUser
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Kleister::TeamUser do
  let(:instance) { Kleister::TeamUser.new }

  describe 'test an instance of TeamUser' do
    it 'should create an instance of TeamUser' do
      expect(instance).to be_instance_of(Kleister::TeamUser)
    end
  end
  describe 'test attribute "team_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "user_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "perm"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["user", "admin", "owner"])
      # validator.allowable_values.each do |value|
      #   expect { instance.perm = value }.not_to raise_error
      # end
    end
  end

end
