# OpenPipette::FiltersApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_filter**](FiltersApi.md#add_filter) | **POST** /filters | Add a new filter |
| [**delete_filter**](FiltersApi.md#delete_filter) | **DELETE** /filters/{id} | Delete a filter |
| [**delete_filters**](FiltersApi.md#delete_filters) | **DELETE** /filters | Delete multiple filters in bulk |
| [**get_filter**](FiltersApi.md#get_filter) | **GET** /filters/{id} | Get one filter |
| [**get_filter_helpers**](FiltersApi.md#get_filter_helpers) | **GET** /filters/helpers | Get all filter helpers |
| [**get_filters**](FiltersApi.md#get_filters) | **GET** /filters | Get all filters |
| [**update_filter**](FiltersApi.md#update_filter) | **PUT** /filters/{id} | Update filter |


## add_filter

> <PostFilterResponse200> add_filter(opts)

Add a new filter

Adds a new filter, returns the ID upon success. Note that in the conditions JSON object only one first-level condition group is supported, and it must be glued with 'AND', and only two second level condition groups are supported of which one must be glued with 'AND' and the second with 'OR'. Other combinations do not work (yet) but the syntax supports introducing them in future. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-filter\" target=\"_blank\" rel=\"noopener noreferrer\">adding a filter</a>.

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

api_instance = OpenPipette::FiltersApi.new
opts = {
  add_filter_request: OpenPipette::AddFilterRequest.new({name: 'name_example', conditions: 3.56, type: 'deals'}) # AddFilterRequest | 
}

begin
  # Add a new filter
  result = api_instance.add_filter(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->add_filter: #{e}"
end
```

#### Using the add_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFilterResponse200>, Integer, Hash)> add_filter_with_http_info(opts)

```ruby
begin
  # Add a new filter
  data, status_code, headers = api_instance.add_filter_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFilterResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->add_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_filter_request** | [**AddFilterRequest**](AddFilterRequest.md) |  | [optional] |

### Return type

[**PostFilterResponse200**](PostFilterResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_filter

> <DeleteFilterResponse200> delete_filter(id)

Delete a filter

Marks a filter as deleted.

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

api_instance = OpenPipette::FiltersApi.new
id = 56 # Integer | The ID of the filter

begin
  # Delete a filter
  result = api_instance.delete_filter(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->delete_filter: #{e}"
end
```

#### Using the delete_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFilterResponse200>, Integer, Hash)> delete_filter_with_http_info(id)

```ruby
begin
  # Delete a filter
  data, status_code, headers = api_instance.delete_filter_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFilterResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->delete_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the filter |  |

### Return type

[**DeleteFilterResponse200**](DeleteFilterResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_filters

> <DeleteFiltersResponse200> delete_filters(ids)

Delete multiple filters in bulk

Marks multiple filters as deleted.

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

api_instance = OpenPipette::FiltersApi.new
ids = 'ids_example' # String | The comma-separated filter IDs to delete

begin
  # Delete multiple filters in bulk
  result = api_instance.delete_filters(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->delete_filters: #{e}"
end
```

#### Using the delete_filters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFiltersResponse200>, Integer, Hash)> delete_filters_with_http_info(ids)

```ruby
begin
  # Delete multiple filters in bulk
  data, status_code, headers = api_instance.delete_filters_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFiltersResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->delete_filters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated filter IDs to delete |  |

### Return type

[**DeleteFiltersResponse200**](DeleteFiltersResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_filter

> <GetFilterResponse200> get_filter(id)

Get one filter

Returns data about a specific filter. Note that this also returns the condition lines of the filter.

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

api_instance = OpenPipette::FiltersApi.new
id = 56 # Integer | The ID of the filter

begin
  # Get one filter
  result = api_instance.get_filter(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->get_filter: #{e}"
end
```

#### Using the get_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFilterResponse200>, Integer, Hash)> get_filter_with_http_info(id)

```ruby
begin
  # Get one filter
  data, status_code, headers = api_instance.get_filter_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFilterResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->get_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the filter |  |

### Return type

[**GetFilterResponse200**](GetFilterResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_filter_helpers

> Object get_filter_helpers

Get all filter helpers

Returns all supported filter helpers. It helps to know what conditions and helpers are available when you want to <a href=\"/docs/api/v1/Filters#addFilter\">add</a> or <a href=\"/docs/api/v1/Filters#updateFilter\">update</a> filters. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-filter\" target=\"_blank\" rel=\"noopener noreferrer\">adding a filter</a>.

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

api_instance = OpenPipette::FiltersApi.new

begin
  # Get all filter helpers
  result = api_instance.get_filter_helpers
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->get_filter_helpers: #{e}"
end
```

#### Using the get_filter_helpers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_filter_helpers_with_http_info

```ruby
begin
  # Get all filter helpers
  data, status_code, headers = api_instance.get_filter_helpers_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->get_filter_helpers_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

**Object**

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_filters

> <GetFiltersResponse200> get_filters(opts)

Get all filters

Returns data about all filters.

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

api_instance = OpenPipette::FiltersApi.new
opts = {
  type: 'deals' # String | The types of filters to fetch
}

begin
  # Get all filters
  result = api_instance.get_filters(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->get_filters: #{e}"
end
```

#### Using the get_filters_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetFiltersResponse200>, Integer, Hash)> get_filters_with_http_info(opts)

```ruby
begin
  # Get all filters
  data, status_code, headers = api_instance.get_filters_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetFiltersResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->get_filters_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | **String** | The types of filters to fetch | [optional] |

### Return type

[**GetFiltersResponse200**](GetFiltersResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_filter

> <PostFilterResponse200> update_filter(id, opts)

Update filter

Updates an existing filter.

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

api_instance = OpenPipette::FiltersApi.new
id = 56 # Integer | The ID of the filter
opts = {
  update_filter_request: OpenPipette::UpdateFilterRequest.new({conditions: 3.56}) # UpdateFilterRequest | 
}

begin
  # Update filter
  result = api_instance.update_filter(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->update_filter: #{e}"
end
```

#### Using the update_filter_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostFilterResponse200>, Integer, Hash)> update_filter_with_http_info(id, opts)

```ruby
begin
  # Update filter
  data, status_code, headers = api_instance.update_filter_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostFilterResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling FiltersApi->update_filter_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the filter |  |
| **update_filter_request** | [**UpdateFilterRequest**](UpdateFilterRequest.md) |  | [optional] |

### Return type

[**PostFilterResponse200**](PostFilterResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

