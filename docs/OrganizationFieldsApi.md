# OpenPipette::OrganizationFieldsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_organization_field**](OrganizationFieldsApi.md#add_organization_field) | **POST** /organizationFields | Add a new organization field |
| [**delete_organization_field**](OrganizationFieldsApi.md#delete_organization_field) | **DELETE** /organizationFields/{id} | Delete an organization field |
| [**delete_organization_fields**](OrganizationFieldsApi.md#delete_organization_fields) | **DELETE** /organizationFields | Delete multiple organization fields in bulk |
| [**get_organization_field**](OrganizationFieldsApi.md#get_organization_field) | **GET** /organizationFields/{id} | Get one organization field |
| [**get_organization_fields**](OrganizationFieldsApi.md#get_organization_fields) | **GET** /organizationFields | Get all organization fields |
| [**update_organization_field**](OrganizationFieldsApi.md#update_organization_field) | **PUT** /organizationFields/{id} | Update an organization field |


## add_organization_field

> <FieldResponse200> add_organization_field(opts)

Add a new organization field

Adds a new organization field. For more information, see the tutorial for <a href=\"https://pipedrive.readme.io/docs/adding-a-new-custom-field\" target=\"_blank\" rel=\"noopener noreferrer\">adding a new custom field</a>.

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

api_instance = OpenPipette::OrganizationFieldsApi.new
opts = {
  create_field_request: OpenPipette::CreateFieldRequest.new({name: 'name_example', field_type: 'address'}) # CreateFieldRequest | 
}

begin
  # Add a new organization field
  result = api_instance.add_organization_field(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->add_organization_field: #{e}"
end
```

#### Using the add_organization_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> add_organization_field_with_http_info(opts)

```ruby
begin
  # Add a new organization field
  data, status_code, headers = api_instance.add_organization_field_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->add_organization_field_with_http_info: #{e}"
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


## delete_organization_field

> <DeleteFieldResponse200> delete_organization_field(id)

Delete an organization field

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

api_instance = OpenPipette::OrganizationFieldsApi.new
id = 56 # Integer | The ID of the field

begin
  # Delete an organization field
  result = api_instance.delete_organization_field(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->delete_organization_field: #{e}"
end
```

#### Using the delete_organization_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFieldResponse200>, Integer, Hash)> delete_organization_field_with_http_info(id)

```ruby
begin
  # Delete an organization field
  data, status_code, headers = api_instance.delete_organization_field_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->delete_organization_field_with_http_info: #{e}"
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


## delete_organization_fields

> <DeleteFieldsResponse200> delete_organization_fields(ids)

Delete multiple organization fields in bulk

Marks multiple fields as deleted.

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

api_instance = OpenPipette::OrganizationFieldsApi.new
ids = 'ids_example' # String | The comma-separated field IDs to delete

begin
  # Delete multiple organization fields in bulk
  result = api_instance.delete_organization_fields(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->delete_organization_fields: #{e}"
end
```

#### Using the delete_organization_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteFieldsResponse200>, Integer, Hash)> delete_organization_fields_with_http_info(ids)

```ruby
begin
  # Delete multiple organization fields in bulk
  data, status_code, headers = api_instance.delete_organization_fields_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteFieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->delete_organization_fields_with_http_info: #{e}"
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


## get_organization_field

> <FieldResponse200> get_organization_field(id)

Get one organization field

Returns data about a specific organization field.

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

api_instance = OpenPipette::OrganizationFieldsApi.new
id = 56 # Integer | The ID of the field

begin
  # Get one organization field
  result = api_instance.get_organization_field(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->get_organization_field: #{e}"
end
```

#### Using the get_organization_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> get_organization_field_with_http_info(id)

```ruby
begin
  # Get one organization field
  data, status_code, headers = api_instance.get_organization_field_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->get_organization_field_with_http_info: #{e}"
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


## get_organization_fields

> <FieldsResponse200> get_organization_fields(opts)

Get all organization fields

Returns data about all organization fields.

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

api_instance = OpenPipette::OrganizationFieldsApi.new
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get all organization fields
  result = api_instance.get_organization_fields(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->get_organization_fields: #{e}"
end
```

#### Using the get_organization_fields_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldsResponse200>, Integer, Hash)> get_organization_fields_with_http_info(opts)

```ruby
begin
  # Get all organization fields
  data, status_code, headers = api_instance.get_organization_fields_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->get_organization_fields_with_http_info: #{e}"
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


## update_organization_field

> <FieldResponse200> update_organization_field(id, opts)

Update an organization field

Updates an organization field. For more information, see the tutorial for <a href=\" https://pipedrive.readme.io/docs/updating-custom-field-value \" target=\"_blank\" rel=\"noopener noreferrer\">updating custom fields' values</a>.

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

api_instance = OpenPipette::OrganizationFieldsApi.new
id = 56 # Integer | The ID of the field
opts = {
  update_field_request: OpenPipette::UpdateFieldRequest.new # UpdateFieldRequest | 
}

begin
  # Update an organization field
  result = api_instance.update_organization_field(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->update_organization_field: #{e}"
end
```

#### Using the update_organization_field_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<FieldResponse200>, Integer, Hash)> update_organization_field_with_http_info(id, opts)

```ruby
begin
  # Update an organization field
  data, status_code, headers = api_instance.update_organization_field_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <FieldResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling OrganizationFieldsApi->update_organization_field_with_http_info: #{e}"
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

