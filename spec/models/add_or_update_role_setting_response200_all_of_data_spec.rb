=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for OpenPipette::AddOrUpdateRoleSettingResponse200AllOfData
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenPipette::AddOrUpdateRoleSettingResponse200AllOfData do
  let(:instance) { OpenPipette::AddOrUpdateRoleSettingResponse200AllOfData.new }

  describe 'test an instance of AddOrUpdateRoleSettingResponse200AllOfData' do
    it 'should create an instance of AddOrUpdateRoleSettingResponse200AllOfData' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenPipette::AddOrUpdateRoleSettingResponse200AllOfData)
    end
  end

  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "deal_default_visibility"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [1, 3, 5, 7])
      # validator.allowable_values.each do |value|
      #   expect { instance.deal_default_visibility = value }.not_to raise_error
      # end
    end
  end

end
