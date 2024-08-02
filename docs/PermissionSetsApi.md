# OpenPipette::PermissionSetsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_permission_set**](PermissionSetsApi.md#get_permission_set) | **GET** /permissionSets/{id} | Get one permission set |
| [**get_permission_set_assignments**](PermissionSetsApi.md#get_permission_set_assignments) | **GET** /permissionSets/{id}/assignments | List permission set assignments |
| [**get_permission_sets**](PermissionSetsApi.md#get_permission_sets) | **GET** /permissionSets | Get all permission sets |


## get_permission_set

> <SinglePermissionSetResponse200> get_permission_set(id)

Get one permission set

Returns data about a specific permission set.

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

api_instance = OpenPipette::PermissionSetsApi.new
id = 'id_example' # String | The ID of the permission set

begin
  # Get one permission set
  result = api_instance.get_permission_set(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PermissionSetsApi->get_permission_set: #{e}"
end
```

#### Using the get_permission_set_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SinglePermissionSetResponse200>, Integer, Hash)> get_permission_set_with_http_info(id)

```ruby
begin
  # Get one permission set
  data, status_code, headers = api_instance.get_permission_set_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SinglePermissionSetResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PermissionSetsApi->get_permission_set_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the permission set |  |

### Return type

[**SinglePermissionSetResponse200**](SinglePermissionSetResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_permission_set_assignments

> <UserAssignmentsToPermissionSetResponse200> get_permission_set_assignments(id, opts)

List permission set assignments

Returns the list of assignments for a permission set.

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

api_instance = OpenPipette::PermissionSetsApi.new
id = 'id_example' # String | The ID of the permission set
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # List permission set assignments
  result = api_instance.get_permission_set_assignments(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PermissionSetsApi->get_permission_set_assignments: #{e}"
end
```

#### Using the get_permission_set_assignments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserAssignmentsToPermissionSetResponse200>, Integer, Hash)> get_permission_set_assignments_with_http_info(id, opts)

```ruby
begin
  # List permission set assignments
  data, status_code, headers = api_instance.get_permission_set_assignments_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserAssignmentsToPermissionSetResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PermissionSetsApi->get_permission_set_assignments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the permission set |  |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**UserAssignmentsToPermissionSetResponse200**](UserAssignmentsToPermissionSetResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_permission_sets

> <GetPermissionSetsResponse200> get_permission_sets(opts)

Get all permission sets

Returns data about all permission sets.

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

api_instance = OpenPipette::PermissionSetsApi.new
opts = {
  app: 'sales' # String | The app to filter the permission sets by
}

begin
  # Get all permission sets
  result = api_instance.get_permission_sets(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PermissionSetsApi->get_permission_sets: #{e}"
end
```

#### Using the get_permission_sets_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPermissionSetsResponse200>, Integer, Hash)> get_permission_sets_with_http_info(opts)

```ruby
begin
  # Get all permission sets
  data, status_code, headers = api_instance.get_permission_sets_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPermissionSetsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PermissionSetsApi->get_permission_sets_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **app** | **String** | The app to filter the permission sets by | [optional] |

### Return type

[**GetPermissionSetsResponse200**](GetPermissionSetsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

