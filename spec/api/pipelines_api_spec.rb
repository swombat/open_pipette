=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenPipette::PipelinesApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PipelinesApi' do
  before do
    # run before each test
    @api_instance = OpenPipette::PipelinesApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PipelinesApi' do
    it 'should create an instance of PipelinesApi' do
      expect(@api_instance).to be_instance_of(OpenPipette::PipelinesApi)
    end
  end

  # unit tests for add_pipeline
  # Add a new pipeline
  # Adds a new pipeline.
  # @param [Hash] opts the optional parameters
  # @option opts [PipelineRequest] :pipeline_request 
  # @return [AddPipelineResponse200]
  describe 'add_pipeline test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_pipeline
  # Delete a pipeline
  # Marks a pipeline as deleted.
  # @param id The ID of the pipeline
  # @param [Hash] opts the optional parameters
  # @return [DeletePipelineResponse200]
  describe 'delete_pipeline test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_pipeline
  # Get one pipeline
  # Returns data about a specific pipeline. Also returns the summary of the deals in this pipeline across its stages.
  # @param id The ID of the pipeline
  # @param [Hash] opts the optional parameters
  # @option opts [String] :totals_convert_currency The 3-letter currency code of any of the supported currencies. When supplied, &#x60;per_stages_converted&#x60; is returned in &#x60;deals_summary&#x60; which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#x60;default_currency&#x60; in which case users default currency is used.
  # @return [GetPipelineResponse200]
  describe 'get_pipeline test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_pipeline_conversion_statistics
  # Get deals conversion rates in pipeline
  # Returns all stage-to-stage conversion and pipeline-to-close rates for the given time period.
  # @param id The ID of the pipeline
  # @param start_date The start of the period. Date in format of YYYY-MM-DD.
  # @param end_date The end of the period. Date in format of YYYY-MM-DD.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :user_id The ID of the user who&#39;s pipeline metrics statistics to fetch. If omitted, the authorized user will be used.
  # @return [GetPipelineConversionStatisticsResponse200]
  describe 'get_pipeline_conversion_statistics test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_pipeline_deals
  # Get deals in a pipeline
  # Lists deals in a specific pipeline across all its stages.
  # @param id The ID of the pipeline
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :filter_id If supplied, only deals matching the given filter will be returned
  # @option opts [Integer] :user_id If supplied, &#x60;filter_id&#x60; will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned.
  # @option opts [Float] :everyone If supplied, &#x60;filter_id&#x60; and &#x60;user_id&#x60; will not be considered – instead, deals owned by everyone will be returned
  # @option opts [Integer] :stage_id If supplied, only deals within the given stage will be returned
  # @option opts [Integer] :start Pagination start
  # @option opts [Integer] :limit Items shown per page
  # @option opts [Float] :get_summary Whether to include a summary of the pipeline in the &#x60;additional_data&#x60; or not
  # @option opts [String] :totals_convert_currency The 3-letter currency code of any of the supported currencies. When supplied, &#x60;per_stages_converted&#x60; is returned inside &#x60;deals_summary&#x60; inside &#x60;additional_data&#x60; which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#x60;default_currency&#x60; in which case users default currency is used. Only works when &#x60;get_summary&#x60; parameter flag is enabled.
  # @return [GetStageDealsResponse200]
  describe 'get_pipeline_deals test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_pipeline_movement_statistics
  # Get deals movements in pipeline
  # Returns statistics for deals movements for the given time period.
  # @param id The ID of the pipeline
  # @param start_date The start of the period. Date in format of YYYY-MM-DD.
  # @param end_date The end of the period. Date in format of YYYY-MM-DD.
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :user_id The ID of the user who&#39;s pipeline statistics to fetch. If omitted, the authorized user will be used.
  # @return [GetPipelineMovementStatisticsResponse200]
  describe 'get_pipeline_movement_statistics test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_pipelines
  # Get all pipelines
  # Returns data about all pipelines.
  # @param [Hash] opts the optional parameters
  # @return [GetPipelinesResponse200]
  describe 'get_pipelines test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_pipeline
  # Update a pipeline
  # Updates the properties of a pipeline.
  # @param id The ID of the pipeline
  # @param [Hash] opts the optional parameters
  # @option opts [PipelineRequest1] :pipeline_request1 
  # @return [UpdatePipelineResponse200]
  describe 'update_pipeline test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
