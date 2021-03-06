=begin
#Kleister OpenAPI

#API definition for Kleister, manage mod packs for Minecraft

The version of the OpenAPI document: 1.0.0-alpha1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.0.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Kleister::MinecraftBuildParams
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'MinecraftBuildParams' do
  before do
    # run before each test
    @instance = Kleister::MinecraftBuildParams.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MinecraftBuildParams' do
    it 'should create an instance of MinecraftBuildParams' do
      expect(@instance).to be_instance_of(Kleister::MinecraftBuildParams)
    end
  end
  describe 'test attribute "pack"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "build"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
