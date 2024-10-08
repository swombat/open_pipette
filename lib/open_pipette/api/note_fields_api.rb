=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenPipette
  class NoteFieldsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all note fields
    # Returns data about all note fields.
    # @param [Hash] opts the optional parameters
    # @return [GetNoteFieldsResponse200]
    def get_note_fields(opts = {})
      data, _status_code, _headers = get_note_fields_with_http_info(opts)
      data
    end

    # Get all note fields
    # Returns data about all note fields.
    # @param [Hash] opts the optional parameters
    # @return [Array<(GetNoteFieldsResponse200, Integer, Hash)>] GetNoteFieldsResponse200 data, response status code and response headers
    def get_note_fields_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: NoteFieldsApi.get_note_fields ...'
      end
      # resource path
      local_var_path = '/noteFields'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetNoteFieldsResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"NoteFieldsApi.get_note_fields",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: NoteFieldsApi#get_note_fields\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
