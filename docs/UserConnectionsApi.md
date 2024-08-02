# OpenPipette::UserConnectionsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_connections**](UserConnectionsApi.md#get_user_connections) | **GET** /userConnections | Get all user connections |


## get_user_connections

> <UserConnectionsResponse200> get_user_connections

Get all user connections

Returns data about all connections for the authorized user.

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

api_instance = OpenPipette::UserConnectionsApi.new

begin
  # Get all user connections
  result = api_instance.get_user_connections
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UserConnectionsApi->get_user_connections: #{e}"
end
```

#### Using the get_user_connections_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserConnectionsResponse200>, Integer, Hash)> get_user_connections_with_http_info

```ruby
begin
  # Get all user connections
  data, status_code, headers = api_instance.get_user_connections_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserConnectionsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UserConnectionsApi->get_user_connections_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**UserConnectionsResponse200**](UserConnectionsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

