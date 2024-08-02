# OpenPipette::OauthApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize**](OauthApi.md#authorize) | **GET** /oauth/authorize | Requesting authorization |
| [**get_tokens**](OauthApi.md#get_tokens) | **POST** /oauth/token | Getting the tokens |
| [**refresh_tokens**](OauthApi.md#refresh_tokens) | **POST** /oauth/token/ | Refreshing the tokens |


## authorize

> authorize(client_id, redirect_uri, opts)

Requesting authorization

Authorize a user by redirecting them to the Pipedrive OAuth authorization page and request their permissions to act on their behalf. This step is necessary to implement only when you allow app installation outside of the Marketplace.

### Examples

```ruby
require 'time'
require 'open_pipette'

api_instance = OpenPipette::OauthApi.new
client_id = 'client_id_example' # String | The client ID provided to you by the Pipedrive Marketplace when you register your app
redirect_uri = 'redirect_uri_example' # String | The callback URL you provided when you registered your app. Authorization code will be sent to that URL (if it matches with the value you entered in the registration form) if a user approves the app install. Or, if a customer declines, the corresponding error will also be sent to this URL.
opts = {
  state: 'state_example' # String | You may pass any random string as the state parameter and the same string will be returned to your app after a user authorizes access. It may be used to store the user's session ID from your app or distinguish different responses. Using state may increase security; see RFC-6749. 
}

begin
  # Requesting authorization
  api_instance.authorize(client_id, redirect_uri, opts)
rescue OpenPipette::ApiError => e
  puts "Error when calling OauthApi->authorize: #{e}"
end
```

#### Using the authorize_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_with_http_info(client_id, redirect_uri, opts)

```ruby
begin
  # Requesting authorization
  data, status_code, headers = api_instance.authorize_with_http_info(client_id, redirect_uri, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenPipette::ApiError => e
  puts "Error when calling OauthApi->authorize_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **client_id** | **String** | The client ID provided to you by the Pipedrive Marketplace when you register your app |  |
| **redirect_uri** | **String** | The callback URL you provided when you registered your app. Authorization code will be sent to that URL (if it matches with the value you entered in the registration form) if a user approves the app install. Or, if a customer declines, the corresponding error will also be sent to this URL. |  |
| **state** | **String** | You may pass any random string as the state parameter and the same string will be returned to your app after a user authorizes access. It may be used to store the user&#39;s session ID from your app or distinguish different responses. Using state may increase security; see RFC-6749.  | [optional] |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: text/html


## get_tokens

> <GetTokensResponse200> get_tokens(authorization, opts)

Getting the tokens

After the customer has confirmed the app installation, you will need to exchange the `authorization_code` to a pair of access and refresh tokens. Using an access token, you can access the user's data through the API.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure HTTP basic authorization: basic_authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenPipette::OauthApi.new
authorization = 'authorization_example' # String | Base 64 encoded string containing the `client_id` and `client_secret` values. The header value should be `Basic <base64(client_id:client_secret)>`.
opts = {
  grant_type: 'authorization_code', # String | Since you are trying to exchange an authorization code for a pair of tokens, you must use the value \\\"authorization_code\\\"
  code: 'code_example', # String | The authorization code that you received after the user confirmed app installation
  redirect_uri: 'redirect_uri_example' # String | The callback URL you provided when you registered your app
}

begin
  # Getting the tokens
  result = api_instance.get_tokens(authorization, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OauthApi->get_tokens: #{e}"
end
```

#### Using the get_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTokensResponse200>, Integer, Hash)> get_tokens_with_http_info(authorization, opts)

```ruby
begin
  # Getting the tokens
  data, status_code, headers = api_instance.get_tokens_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTokensResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OauthApi->get_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Base 64 encoded string containing the &#x60;client_id&#x60; and &#x60;client_secret&#x60; values. The header value should be &#x60;Basic &lt;base64(client_id:client_secret)&gt;&#x60;. |  |
| **grant_type** | **String** | Since you are trying to exchange an authorization code for a pair of tokens, you must use the value \\\&quot;authorization_code\\\&quot; | [optional][default to &#39;authorization_code&#39;] |
| **code** | **String** | The authorization code that you received after the user confirmed app installation | [optional] |
| **redirect_uri** | **String** | The callback URL you provided when you registered your app | [optional] |

### Return type

[**GetTokensResponse200**](GetTokensResponse200.md)

### Authorization

[basic_authentication](../README.md#basic_authentication)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json


## refresh_tokens

> <GetTokensResponse200> refresh_tokens(authorization, opts)

Refreshing the tokens

The `access_token` has a lifetime. After a period of time, which was returned to you in `expires_in` JSON property, the `access_token` will be invalid, and you can no longer use it to get data from our API. To refresh the `access_token`, you must use the `refresh_token`.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure HTTP basic authorization: basic_authentication
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = OpenPipette::OauthApi.new
authorization = 'authorization_example' # String | Base 64 encoded string containing the `client_id` and `client_secret` values. The header value should be `Basic <base64(client_id:client_secret)>`.
opts = {
  grant_type: 'authorization_code', # String | Since you are to refresh your access_token, you must use the value \\\"refresh_token\\\"
  refresh_token: 'refresh_token_example' # String | The refresh token that you received after you exchanged the authorization code
}

begin
  # Refreshing the tokens
  result = api_instance.refresh_tokens(authorization, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OauthApi->refresh_tokens: #{e}"
end
```

#### Using the refresh_tokens_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetTokensResponse200>, Integer, Hash)> refresh_tokens_with_http_info(authorization, opts)

```ruby
begin
  # Refreshing the tokens
  data, status_code, headers = api_instance.refresh_tokens_with_http_info(authorization, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetTokensResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OauthApi->refresh_tokens_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorization** | **String** | Base 64 encoded string containing the &#x60;client_id&#x60; and &#x60;client_secret&#x60; values. The header value should be &#x60;Basic &lt;base64(client_id:client_secret)&gt;&#x60;. |  |
| **grant_type** | **String** | Since you are to refresh your access_token, you must use the value \\\&quot;refresh_token\\\&quot; | [optional][default to &#39;refresh_token&#39;] |
| **refresh_token** | **String** | The refresh token that you received after you exchanged the authorization code | [optional] |

### Return type

[**GetTokensResponse200**](GetTokensResponse200.md)

### Authorization

[basic_authentication](../README.md#basic_authentication)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

