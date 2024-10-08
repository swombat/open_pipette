=begin
#Pipedrive API v1

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenPipette::OauthApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'OauthApi' do
  before do
    # run before each test
    @api_instance = OpenPipette::OauthApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OauthApi' do
    it 'should create an instance of OauthApi' do
      expect(@api_instance).to be_instance_of(OpenPipette::OauthApi)
    end
  end

  # unit tests for authorize
  # Requesting authorization
  # Authorize a user by redirecting them to the Pipedrive OAuth authorization page and request their permissions to act on their behalf. This step is necessary to implement only when you allow app installation outside of the Marketplace.
  # @param client_id The client ID provided to you by the Pipedrive Marketplace when you register your app
  # @param redirect_uri The callback URL you provided when you registered your app. Authorization code will be sent to that URL (if it matches with the value you entered in the registration form) if a user approves the app install. Or, if a customer declines, the corresponding error will also be sent to this URL.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :state You may pass any random string as the state parameter and the same string will be returned to your app after a user authorizes access. It may be used to store the user&#39;s session ID from your app or distinguish different responses. Using state may increase security; see RFC-6749. 
  # @return [nil]
  describe 'authorize test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_tokens
  # Getting the tokens
  # After the customer has confirmed the app installation, you will need to exchange the &#x60;authorization_code&#x60; to a pair of access and refresh tokens. Using an access token, you can access the user&#39;s data through the API.
  # @param authorization Base 64 encoded string containing the &#x60;client_id&#x60; and &#x60;client_secret&#x60; values. The header value should be &#x60;Basic &lt;base64(client_id:client_secret)&gt;&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :grant_type Since you are trying to exchange an authorization code for a pair of tokens, you must use the value \\\&quot;authorization_code\\\&quot;
  # @option opts [String] :code The authorization code that you received after the user confirmed app installation
  # @option opts [String] :redirect_uri The callback URL you provided when you registered your app
  # @return [GetTokensResponse200]
  describe 'get_tokens test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for refresh_tokens
  # Refreshing the tokens
  # The &#x60;access_token&#x60; has a lifetime. After a period of time, which was returned to you in &#x60;expires_in&#x60; JSON property, the &#x60;access_token&#x60; will be invalid, and you can no longer use it to get data from our API. To refresh the &#x60;access_token&#x60;, you must use the &#x60;refresh_token&#x60;.
  # @param authorization Base 64 encoded string containing the &#x60;client_id&#x60; and &#x60;client_secret&#x60; values. The header value should be &#x60;Basic &lt;base64(client_id:client_secret)&gt;&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :grant_type Since you are to refresh your access_token, you must use the value \\\&quot;refresh_token\\\&quot;
  # @option opts [String] :refresh_token The refresh token that you received after you exchanged the authorization code
  # @return [GetTokensResponse200]
  describe 'refresh_tokens test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
