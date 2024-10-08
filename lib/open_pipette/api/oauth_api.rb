=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'cgi'

module OpenPipette
  class OauthApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Requesting authorization
    # Authorize a user by redirecting them to the Pipedrive OAuth authorization page and request their permissions to act on their behalf. This step is necessary to implement only when you allow app installation outside of the Marketplace.
    # @param client_id [String] The client ID provided to you by the Pipedrive Marketplace when you register your app
    # @param redirect_uri [String] The callback URL you provided when you registered your app. Authorization code will be sent to that URL (if it matches with the value you entered in the registration form) if a user approves the app install. Or, if a customer declines, the corresponding error will also be sent to this URL.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state You may pass any random string as the state parameter and the same string will be returned to your app after a user authorizes access. It may be used to store the user&#39;s session ID from your app or distinguish different responses. Using state may increase security; see RFC-6749. 
    # @return [nil]
    def authorize(client_id, redirect_uri, opts = {})
      authorize_with_http_info(client_id, redirect_uri, opts)
      nil
    end

    # Requesting authorization
    # Authorize a user by redirecting them to the Pipedrive OAuth authorization page and request their permissions to act on their behalf. This step is necessary to implement only when you allow app installation outside of the Marketplace.
    # @param client_id [String] The client ID provided to you by the Pipedrive Marketplace when you register your app
    # @param redirect_uri [String] The callback URL you provided when you registered your app. Authorization code will be sent to that URL (if it matches with the value you entered in the registration form) if a user approves the app install. Or, if a customer declines, the corresponding error will also be sent to this URL.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state You may pass any random string as the state parameter and the same string will be returned to your app after a user authorizes access. It may be used to store the user&#39;s session ID from your app or distinguish different responses. Using state may increase security; see RFC-6749. 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def authorize_with_http_info(client_id, redirect_uri, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.authorize ...'
      end
      # verify the required parameter 'client_id' is set
      if @api_client.config.client_side_validation && client_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_id' when calling OauthApi.authorize"
      end
      # verify the required parameter 'redirect_uri' is set
      if @api_client.config.client_side_validation && redirect_uri.nil?
        fail ArgumentError, "Missing the required parameter 'redirect_uri' when calling OauthApi.authorize"
      end
      # resource path
      local_var_path = '/oauth/authorize'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'client_id'] = client_id
      query_params[:'redirect_uri'] = redirect_uri
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/html'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || []

      new_options = opts.merge(
        :operation => :"OauthApi.authorize",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#authorize\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Getting the tokens
    # After the customer has confirmed the app installation, you will need to exchange the `authorization_code` to a pair of access and refresh tokens. Using an access token, you can access the user's data through the API.
    # @param authorization [String] Base 64 encoded string containing the &#x60;client_id&#x60; and &#x60;client_secret&#x60; values. The header value should be &#x60;Basic &lt;base64(client_id:client_secret)&gt;&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type Since you are trying to exchange an authorization code for a pair of tokens, you must use the value \\\&quot;authorization_code\\\&quot; (default to 'authorization_code')
    # @option opts [String] :code The authorization code that you received after the user confirmed app installation
    # @option opts [String] :redirect_uri The callback URL you provided when you registered your app
    # @return [GetTokensResponse200]
    def get_tokens(authorization, opts = {})
      data, _status_code, _headers = get_tokens_with_http_info(authorization, opts)
      data
    end

    # Getting the tokens
    # After the customer has confirmed the app installation, you will need to exchange the &#x60;authorization_code&#x60; to a pair of access and refresh tokens. Using an access token, you can access the user&#39;s data through the API.
    # @param authorization [String] Base 64 encoded string containing the &#x60;client_id&#x60; and &#x60;client_secret&#x60; values. The header value should be &#x60;Basic &lt;base64(client_id:client_secret)&gt;&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type Since you are trying to exchange an authorization code for a pair of tokens, you must use the value \\\&quot;authorization_code\\\&quot; (default to 'authorization_code')
    # @option opts [String] :code The authorization code that you received after the user confirmed app installation
    # @option opts [String] :redirect_uri The callback URL you provided when you registered your app
    # @return [Array<(GetTokensResponse200, Integer, Hash)>] GetTokensResponse200 data, response status code and response headers
    def get_tokens_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.get_tokens ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling OauthApi.get_tokens"
      end
      allowable_values = ["authorization_code", "refresh_token"]
      if @api_client.config.client_side_validation && opts[:'grant_type'] && !allowable_values.include?(opts[:'grant_type'])
        fail ArgumentError, "invalid value for \"grant_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/oauth/token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = opts[:'grant_type'] if !opts[:'grant_type'].nil?
      form_params['code'] = opts[:'code'] if !opts[:'code'].nil?
      form_params['redirect_uri'] = opts[:'redirect_uri'] if !opts[:'redirect_uri'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetTokensResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_authentication']

      new_options = opts.merge(
        :operation => :"OauthApi.get_tokens",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#get_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Refreshing the tokens
    # The `access_token` has a lifetime. After a period of time, which was returned to you in `expires_in` JSON property, the `access_token` will be invalid, and you can no longer use it to get data from our API. To refresh the `access_token`, you must use the `refresh_token`.
    # @param authorization [String] Base 64 encoded string containing the &#x60;client_id&#x60; and &#x60;client_secret&#x60; values. The header value should be &#x60;Basic &lt;base64(client_id:client_secret)&gt;&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type Since you are to refresh your access_token, you must use the value \\\&quot;refresh_token\\\&quot; (default to 'refresh_token')
    # @option opts [String] :refresh_token The refresh token that you received after you exchanged the authorization code
    # @return [GetTokensResponse200]
    def refresh_tokens(authorization, opts = {})
      data, _status_code, _headers = refresh_tokens_with_http_info(authorization, opts)
      data
    end

    # Refreshing the tokens
    # The &#x60;access_token&#x60; has a lifetime. After a period of time, which was returned to you in &#x60;expires_in&#x60; JSON property, the &#x60;access_token&#x60; will be invalid, and you can no longer use it to get data from our API. To refresh the &#x60;access_token&#x60;, you must use the &#x60;refresh_token&#x60;.
    # @param authorization [String] Base 64 encoded string containing the &#x60;client_id&#x60; and &#x60;client_secret&#x60; values. The header value should be &#x60;Basic &lt;base64(client_id:client_secret)&gt;&#x60;.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :grant_type Since you are to refresh your access_token, you must use the value \\\&quot;refresh_token\\\&quot; (default to 'refresh_token')
    # @option opts [String] :refresh_token The refresh token that you received after you exchanged the authorization code
    # @return [Array<(GetTokensResponse200, Integer, Hash)>] GetTokensResponse200 data, response status code and response headers
    def refresh_tokens_with_http_info(authorization, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OauthApi.refresh_tokens ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling OauthApi.refresh_tokens"
      end
      allowable_values = ["authorization_code", "refresh_token"]
      if @api_client.config.client_side_validation && opts[:'grant_type'] && !allowable_values.include?(opts[:'grant_type'])
        fail ArgumentError, "invalid value for \"grant_type\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/oauth/token/'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = opts[:'grant_type'] if !opts[:'grant_type'].nil?
      form_params['refresh_token'] = opts[:'refresh_token'] if !opts[:'refresh_token'].nil?

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'GetTokensResponse200'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['basic_authentication']

      new_options = opts.merge(
        :operation => :"OauthApi.refresh_tokens",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OauthApi#refresh_tokens\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
