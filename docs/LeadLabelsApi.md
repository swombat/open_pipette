# OpenPipette::LeadLabelsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_lead_label**](LeadLabelsApi.md#add_lead_label) | **POST** /leadLabels | Add a lead label |
| [**delete_lead_label**](LeadLabelsApi.md#delete_lead_label) | **DELETE** /leadLabels/{id} | Delete a lead label |
| [**get_lead_labels**](LeadLabelsApi.md#get_lead_labels) | **GET** /leadLabels | Get all lead labels |
| [**update_lead_label**](LeadLabelsApi.md#update_lead_label) | **PATCH** /leadLabels/{id} | Update a lead label |


## add_lead_label

> <AddOrUpdateLeadLabelResponse200> add_lead_label(opts)

Add a lead label

Creates a lead label.

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

api_instance = OpenPipette::LeadLabelsApi.new
opts = {
  add_lead_label_request: OpenPipette::AddLeadLabelRequest.new({name: 'name_example', color: 'green'}) # AddLeadLabelRequest | 
}

begin
  # Add a lead label
  result = api_instance.add_lead_label(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadLabelsApi->add_lead_label: #{e}"
end
```

#### Using the add_lead_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrUpdateLeadLabelResponse200>, Integer, Hash)> add_lead_label_with_http_info(opts)

```ruby
begin
  # Add a lead label
  data, status_code, headers = api_instance.add_lead_label_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrUpdateLeadLabelResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadLabelsApi->add_lead_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_lead_label_request** | [**AddLeadLabelRequest**](AddLeadLabelRequest.md) |  | [optional] |

### Return type

[**AddOrUpdateLeadLabelResponse200**](AddOrUpdateLeadLabelResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_lead_label

> <LeadIdResponse200> delete_lead_label(id)

Delete a lead label

Deletes a specific lead label.

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

api_instance = OpenPipette::LeadLabelsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the lead label

begin
  # Delete a lead label
  result = api_instance.delete_lead_label(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadLabelsApi->delete_lead_label: #{e}"
end
```

#### Using the delete_lead_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LeadIdResponse200>, Integer, Hash)> delete_lead_label_with_http_info(id)

```ruby
begin
  # Delete a lead label
  data, status_code, headers = api_instance.delete_lead_label_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LeadIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadLabelsApi->delete_lead_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the lead label |  |

### Return type

[**LeadIdResponse200**](LeadIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_lead_labels

> <GetLeadLabelsResponse200> get_lead_labels

Get all lead labels

Returns details of all lead labels. This endpoint does not support pagination and all labels are always returned.

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

api_instance = OpenPipette::LeadLabelsApi.new

begin
  # Get all lead labels
  result = api_instance.get_lead_labels
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadLabelsApi->get_lead_labels: #{e}"
end
```

#### Using the get_lead_labels_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLeadLabelsResponse200>, Integer, Hash)> get_lead_labels_with_http_info

```ruby
begin
  # Get all lead labels
  data, status_code, headers = api_instance.get_lead_labels_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLeadLabelsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadLabelsApi->get_lead_labels_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetLeadLabelsResponse200**](GetLeadLabelsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_lead_label

> <AddOrUpdateLeadLabelResponse200> update_lead_label(id, opts)

Update a lead label

Updates one or more properties of a lead label. Only properties included in the request will be updated. 

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

api_instance = OpenPipette::LeadLabelsApi.new
id = '38400000-8cf0-11bd-b23e-10b96e4ef00d' # String | The ID of the lead label
opts = {
  update_lead_label_request: OpenPipette::UpdateLeadLabelRequest.new # UpdateLeadLabelRequest | 
}

begin
  # Update a lead label
  result = api_instance.update_lead_label(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadLabelsApi->update_lead_label: #{e}"
end
```

#### Using the update_lead_label_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddOrUpdateLeadLabelResponse200>, Integer, Hash)> update_lead_label_with_http_info(id, opts)

```ruby
begin
  # Update a lead label
  data, status_code, headers = api_instance.update_lead_label_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddOrUpdateLeadLabelResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadLabelsApi->update_lead_label_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the lead label |  |
| **update_lead_label_request** | [**UpdateLeadLabelRequest**](UpdateLeadLabelRequest.md) |  | [optional] |

### Return type

[**AddOrUpdateLeadLabelResponse200**](AddOrUpdateLeadLabelResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

