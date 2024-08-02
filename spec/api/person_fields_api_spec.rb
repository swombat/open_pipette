=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenPipette::PersonFieldsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PersonFieldsApi' do
  before do
    # run before each test
    @api_instance = OpenPipette::PersonFieldsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PersonFieldsApi' do
    it 'should create an instance of PersonFieldsApi' do
      expect(@api_instance).to be_instance_of(OpenPipette::PersonFieldsApi)
    end
  end

  # unit tests for add_person_field
  # Add a new person field
  # Adds a new person field. For more information, see the tutorial for &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/adding-a-new-custom-field\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;adding a new custom field&lt;/a&gt;.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateFieldRequest] :create_field_request 
  # @return [FieldResponse200]
  describe 'add_person_field test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_person_field
  # Delete a person field
  # Marks a field as deleted. For more information, see the tutorial for &lt;a href&#x3D;\&quot;https://pipedrive.readme.io/docs/deleting-a-custom-field\&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;deleting a custom field&lt;/a&gt;.
  # @param id The ID of the field
  # @param [Hash] opts the optional parameters
  # @return [DeleteFieldResponse200]
  describe 'delete_person_field test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_person_fields
  # Delete multiple person fields in bulk
  # Marks multiple fields as deleted.
  # @param ids The comma-separated field IDs to delete
  # @param [Hash] opts the optional parameters
  # @return [DeleteFieldsResponse200]
  describe 'delete_person_fields test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_person_field
  # Get one person field
  # Returns data about a specific person field.
  # @param id The ID of the field
  # @param [Hash] opts the optional parameters
  # @return [FieldResponse200]
  describe 'get_person_field test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_person_fields
  # Get all person fields
  # Returns data about all person fields.&lt;br&gt;If a company uses the [Campaigns product](https://pipedrive.readme.io/docs/campaigns-in-pipedrive-api), then this endpoint will also return the &#x60;data.marketing_status&#x60; field.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @return [FieldsResponse200]
  describe 'get_person_fields test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_person_field
  # Update a person field
  # Updates a person field. For more information, see the tutorial for &lt;a href&#x3D;\&quot; https://pipedrive.readme.io/docs/updating-custom-field-value \&quot; target&#x3D;\&quot;_blank\&quot; rel&#x3D;\&quot;noopener noreferrer\&quot;&gt;updating custom fields&#39; values&lt;/a&gt;.
  # @param id The ID of the field
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateFieldRequest] :update_field_request 
  # @return [FieldResponse200]
  describe 'update_person_field test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
