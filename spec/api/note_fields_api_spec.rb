=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenPipette::NoteFieldsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'NoteFieldsApi' do
  before do
    # run before each test
    @api_instance = OpenPipette::NoteFieldsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of NoteFieldsApi' do
    it 'should create an instance of NoteFieldsApi' do
      expect(@api_instance).to be_instance_of(OpenPipette::NoteFieldsApi)
    end
  end

  # unit tests for get_note_fields
  # Get all note fields
  # Returns data about all note fields.
  # @param [Hash] opts the optional parameters
  # @return [GetNoteFieldsResponse200]
  describe 'get_note_fields test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
