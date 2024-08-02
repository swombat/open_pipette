=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenPipette
  class CurrenciesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all supported currencies
    # Returns all supported currencies in given account which should be used when saving monetary values with other objects. The `code` parameter of the returning objects is the currency code according to ISO 4217 for all non-custom currencies.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :term Optional search term that is searched for from currency&#39;s name and/or code
    # @return [GetCurrenciesResponse200]
    def get_currencies(opts = {})
      data, _status_code, _headers = get_currencies_with_http_info(opts)
      data
    end

    # Get all supported currencies
    # Returns all supported currencies in given account which should be used when saving monetary values with other objects. The &#x60;code&#x60; parameter of the returning objects is the currency code according to ISO 4217 for all non-custom currencies.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :term Optional search term that is searched for from currency&#39;s name and/or code
    # @return [Array<(GetCurrenciesResponse200, Integer, Hash)>] GetCurrenciesResponse200 data, response status code and response headers
    def get_currencies_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CurrenciesApi.get_currencies ...'
      end
      # resource path
      local_var_path = '/currencies'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'term'] = opts[:'term'] if !opts[:'term'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetCurrenciesResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'oauth2']

      new_options = opts.merge(
        :operation => :"CurrenciesApi.get_currencies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CurrenciesApi#get_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
