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

# Unit tests for OpenPipette::UpdateActivityTypeRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe OpenPipette::UpdateActivityTypeRequest do
  let(:instance) { OpenPipette::UpdateActivityTypeRequest.new }

  describe 'test an instance of UpdateActivityTypeRequest' do
    it 'should create an instance of UpdateActivityTypeRequest' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(OpenPipette::UpdateActivityTypeRequest)
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "icon_key"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["task", "email", "meeting", "deadline", "call", "lunch", "calendar", "downarrow", "document", "smartphone", "camera", "scissors", "cogs", "bubble", "uparrow", "checkbox", "signpost", "shuffle", "addressbook", "linegraph", "picture", "car", "world", "search", "clip", "sound", "brush", "key", "padlock", "pricetag", "suitcase", "finish", "plane", "loop", "wifi", "truck", "cart", "bulb", "bell", "presentation"])
      # validator.allowable_values.each do |value|
      #   expect { instance.icon_key = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "color"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "order_nr"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
