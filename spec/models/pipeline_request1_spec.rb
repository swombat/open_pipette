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

# Unit tests for OpenPipette::PipelineRequest1
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenPipette::PipelineRequest1 do
  let(:instance) { OpenPipette::PipelineRequest1.new }

  describe 'test an instance of PipelineRequest1' do
    it 'should create an instance of PipelineRequest1' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenPipette::PipelineRequest1)
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "deal_probability"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.deal_probability = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "order_nr"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "active"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('Float', [0, 1])
      # validator.allowable_values.each do |value|
      #   expect { instance.active = value }.not_to raise_error
      # end
    end
  end

end
