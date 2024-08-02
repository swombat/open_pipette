# OpenPipette::RecentsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_recents**](RecentsApi.md#get_recents) | **GET** /recents | Get recents |


## get_recents

> <GetRecentsResponse200> get_recents(since_timestamp, opts)

Get recents

Returns data about all recent changes occurred after the given timestamp.

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

api_instance = OpenPipette::RecentsApi.new
since_timestamp = 'since_timestamp_example' # String | The timestamp in UTC. Format: YYYY-MM-DD HH:MM:SS.
opts = {
  items: 'activity', # String | Multiple selection of item types to include in the query (optional)
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get recents
  result = api_instance.get_recents(since_timestamp, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling RecentsApi->get_recents: #{e}"
end
```

#### Using the get_recents_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetRecentsResponse200>, Integer, Hash)> get_recents_with_http_info(since_timestamp, opts)

```ruby
begin
  # Get recents
  data, status_code, headers = api_instance.get_recents_with_http_info(since_timestamp, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetRecentsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling RecentsApi->get_recents_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since_timestamp** | **String** | The timestamp in UTC. Format: YYYY-MM-DD HH:MM:SS. |  |
| **items** | **String** | Multiple selection of item types to include in the query (optional) | [optional] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetRecentsResponse200**](GetRecentsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

