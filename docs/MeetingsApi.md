# OpenPipette::MeetingsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_user_provider_link**](MeetingsApi.md#delete_user_provider_link) | **DELETE** /meetings/userProviderLinks/{id} | Delete the link between a user and the installed video call integration |
| [**save_user_provider_link**](MeetingsApi.md#save_user_provider_link) | **POST** /meetings/userProviderLinks | Link a user with the installed video call integration |


## delete_user_provider_link

> <UserProviderLinkSuccessResponse> delete_user_provider_link(id)

Delete the link between a user and the installed video call integration

A video calling provider must call this endpoint to remove the link between a user and the installed video calling app.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::MeetingsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | Unique identifier linking a user to the installed integration

begin
  # Delete the link between a user and the installed video call integration
  result = api_instance.delete_user_provider_link(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling MeetingsApi->delete_user_provider_link: #{e}"
end
```

#### Using the delete_user_provider_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserProviderLinkSuccessResponse>, Integer, Hash)> delete_user_provider_link_with_http_info(id)

```ruby
begin
  # Delete the link between a user and the installed video call integration
  data, status_code, headers = api_instance.delete_user_provider_link_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserProviderLinkSuccessResponse>
rescue OpenPipette::ApiError => e
  puts "Error when calling MeetingsApi->delete_user_provider_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier linking a user to the installed integration |  |

### Return type

[**UserProviderLinkSuccessResponse**](UserProviderLinkSuccessResponse.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## save_user_provider_link

> <UserProviderLinkSuccessResponse> save_user_provider_link(opts)

Link a user with the installed video call integration

A video calling provider must call this endpoint after a user has installed the video calling app so that the new user's information is sent.

### Examples

```ruby
require 'time'
require 'open_pipette'
# setup authorization
OpenPipette.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: oauth2
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenPipette::MeetingsApi.new
opts = {
  add_user_provider_link_request: OpenPipette::AddUserProviderLinkRequest.new({user_provider_id: '1e3943c9-6395-462b-b432-1f252c017f3d', user_id: 123, company_id: 456, marketplace_client_id: '57da5c3c55a82bb4'}) # AddUserProviderLinkRequest | 
}

begin
  # Link a user with the installed video call integration
  result = api_instance.save_user_provider_link(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling MeetingsApi->save_user_provider_link: #{e}"
end
```

#### Using the save_user_provider_link_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserProviderLinkSuccessResponse>, Integer, Hash)> save_user_provider_link_with_http_info(opts)

```ruby
begin
  # Link a user with the installed video call integration
  data, status_code, headers = api_instance.save_user_provider_link_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserProviderLinkSuccessResponse>
rescue OpenPipette::ApiError => e
  puts "Error when calling MeetingsApi->save_user_provider_link_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_user_provider_link_request** | [**AddUserProviderLinkRequest**](AddUserProviderLinkRequest.md) |  | [optional] |

### Return type

[**UserProviderLinkSuccessResponse**](UserProviderLinkSuccessResponse.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

