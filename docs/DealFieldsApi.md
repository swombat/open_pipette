# OpenPipette::DealFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_deal_field**](DealFieldsApi.md#add_deal_field) | **POST** /dealFields | Add a new deal field |
| [**delete_deal_field**](DealFieldsApi.md#delete_deal_field) | **DELETE** /dealFields/{id} | Delete a deal field |
| [**delete_deal_fields**](DealFieldsApi.md#delete_deal_fields) | **DELETE** /dealFields | Delete multiple deal fields in bulk |
| [**get_deal_field**](DealFieldsApi.md#get_deal_field) | **GET** /dealFields/{id} | Get one deal field |
| [**get_deal_fields**](DealFieldsApi.md#get_deal_fields) | **GET** /dealFields | Get all deal fields |
| [**update_deal_field**](DealFieldsApi.md#update_deal_field) | **PUT** /dealFields/{id} | Update a deal field |


## add_deal_field

> <FieldResponse200> add_deal_field(opts)

Add a new deal field

Adds a new deal field. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-new-custom-field\" target=\"_blank\" rel=\"noopener noreferrer\">adding a new custom field</a>.

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

api_instance = OpenPipette::DealFieldsApi.new
opts = {
  create_field_request: OpenPipette::CreateFieldRequest.new({name: 'name_example', field_type: 'address'}) # CreateFieldRequest | 
}

begin
  # Add a new deal field
  result = api_instance.add_deal_field(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->add_deal_field: #{e}"
end
```

#### Using the add_deal_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> add_deal_field_with_http_info(opts)

```ruby
begin
  # Add a new deal field
  data, status_code, headers = api_instance.add_deal_field_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->add_deal_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **create_field_request** | [**CreateFieldRequest**](CreateFieldRequest.md) |  | [optional] |

### Return type

[**FieldResponse200**](FieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_deal_field

> <DeleteFieldResponse200> delete_deal_field(id)

Delete a deal field

Marks a field as deleted. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/deleting-a-custom-field\" target=\"_blank\" rel=\"noopener noreferrer\">deleting a custom field</a>.

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

api_instance = OpenPipette::DealFieldsApi.new
id = 56 # Integer | The ID of the field

begin
  # Delete a deal field
  result = api_instance.delete_deal_field(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->delete_deal_field: #{e}"
end
```

#### Using the delete_deal_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFieldResponse200>, Integer, Hash)> delete_deal_field_with_http_info(id)

```ruby
begin
  # Delete a deal field
  data, status_code, headers = api_instance.delete_deal_field_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->delete_deal_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the field |  |

### Return type

[**DeleteFieldResponse200**](DeleteFieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_deal_fields

> <DeleteFieldsResponse200> delete_deal_fields(ids)

Delete multiple deal fields in bulk

Marks multiple deal fields as deleted.

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

api_instance = OpenPipette::DealFieldsApi.new
ids = 'ids_example' # String | The comma-separated field IDs to delete

begin
  # Delete multiple deal fields in bulk
  result = api_instance.delete_deal_fields(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->delete_deal_fields: #{e}"
end
```

#### Using the delete_deal_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFieldsResponse200>, Integer, Hash)> delete_deal_fields_with_http_info(ids)

```ruby
begin
  # Delete multiple deal fields in bulk
  data, status_code, headers = api_instance.delete_deal_fields_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->delete_deal_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated field IDs to delete |  |

### Return type

[**DeleteFieldsResponse200**](DeleteFieldsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_field

> <FieldResponse200> get_deal_field(id)

Get one deal field

Returns data about a specific deal field.

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

api_instance = OpenPipette::DealFieldsApi.new
id = 56 # Integer | The ID of the field

begin
  # Get one deal field
  result = api_instance.get_deal_field(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->get_deal_field: #{e}"
end
```

#### Using the get_deal_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> get_deal_field_with_http_info(id)

```ruby
begin
  # Get one deal field
  data, status_code, headers = api_instance.get_deal_field_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->get_deal_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the field |  |

### Return type

[**FieldResponse200**](FieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_deal_fields

> <FieldsResponse200> get_deal_fields(opts)

Get all deal fields

Returns data about all deal fields.

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

api_instance = OpenPipette::DealFieldsApi.new
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get all deal fields
  result = api_instance.get_deal_fields(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->get_deal_fields: #{e}"
end
```

#### Using the get_deal_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldsResponse200>, Integer, Hash)> get_deal_fields_with_http_info(opts)

```ruby
begin
  # Get all deal fields
  data, status_code, headers = api_instance.get_deal_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->get_deal_fields_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**FieldsResponse200**](FieldsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_deal_field

> <FieldResponse200> update_deal_field(id, opts)

Update a deal field

Updates a deal field. For more information, see the tutorial for <a href=\" https://pipedrive.readme.io/docs/updating-custom-field-value \" target=\"_blank\" rel=\"noopener noreferrer\">updating custom fields' values</a>.

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

api_instance = OpenPipette::DealFieldsApi.new
id = 56 # Integer | The ID of the field
opts = {
  update_field_request: OpenPipette::UpdateFieldRequest.new # UpdateFieldRequest | 
}

begin
  # Update a deal field
  result = api_instance.update_deal_field(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->update_deal_field: #{e}"
end
```

#### Using the update_deal_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> update_deal_field_with_http_info(id, opts)

```ruby
begin
  # Update a deal field
  data, status_code, headers = api_instance.update_deal_field_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling DealFieldsApi->update_deal_field_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the field |  |
| **update_field_request** | [**UpdateFieldRequest**](UpdateFieldRequest.md) |  | [optional] |

### Return type

[**FieldResponse200**](FieldResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

