# OpenPipette::StagesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_stage**](StagesApi.md#add_stage) | **POST** /stages | Add a new stage |
| [**delete_stage**](StagesApi.md#delete_stage) | **DELETE** /stages/{id} | Delete a stage |
| [**delete_stages**](StagesApi.md#delete_stages) | **DELETE** /stages | Delete multiple stages in bulk |
| [**get_stage**](StagesApi.md#get_stage) | **GET** /stages/{id} | Get one stage |
| [**get_stage_deals**](StagesApi.md#get_stage_deals) | **GET** /stages/{id}/deals | Get deals in a stage |
| [**get_stages**](StagesApi.md#get_stages) | **GET** /stages | Get all stages |
| [**update_stage**](StagesApi.md#update_stage) | **PUT** /stages/{id} | Update stage details |


## add_stage

> <StageResponse200> add_stage(opts)

Add a new stage

Adds a new stage, returns the ID upon success.

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

api_instance = OpenPipette::StagesApi.new
opts = {
  add_stage_request: OpenPipette::AddStageRequest.new({name: 'name_example', pipeline_id: 37}) # AddStageRequest | 
}

begin
  # Add a new stage
  result = api_instance.add_stage(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->add_stage: #{e}"
end
```

#### Using the add_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StageResponse200>, Integer, Hash)> add_stage_with_http_info(opts)

```ruby
begin
  # Add a new stage
  data, status_code, headers = api_instance.add_stage_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StageResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->add_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_stage_request** | [**AddStageRequest**](AddStageRequest.md) |  | [optional] |

### Return type

[**StageResponse200**](StageResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_stage

> <DeleteStageResponse200> delete_stage(id)

Delete a stage

Marks a stage as deleted.

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

api_instance = OpenPipette::StagesApi.new
id = 56 # Integer | The ID of the stage

begin
  # Delete a stage
  result = api_instance.delete_stage(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->delete_stage: #{e}"
end
```

#### Using the delete_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteStageResponse200>, Integer, Hash)> delete_stage_with_http_info(id)

```ruby
begin
  # Delete a stage
  data, status_code, headers = api_instance.delete_stage_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteStageResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->delete_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the stage |  |

### Return type

[**DeleteStageResponse200**](DeleteStageResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_stages

> <DeleteStagesResponse200> delete_stages(ids)

Delete multiple stages in bulk

Marks multiple stages as deleted.

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

api_instance = OpenPipette::StagesApi.new
ids = 'ids_example' # String | The comma-separated stage IDs to delete

begin
  # Delete multiple stages in bulk
  result = api_instance.delete_stages(ids)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->delete_stages: #{e}"
end
```

#### Using the delete_stages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteStagesResponse200>, Integer, Hash)> delete_stages_with_http_info(ids)

```ruby
begin
  # Delete multiple stages in bulk
  data, status_code, headers = api_instance.delete_stages_with_http_info(ids)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteStagesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->delete_stages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **ids** | **String** | The comma-separated stage IDs to delete |  |

### Return type

[**DeleteStagesResponse200**](DeleteStagesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stage

> <GetStageResponse200> get_stage(id, opts)

Get one stage

Returns data about a specific stage.

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

api_instance = OpenPipette::StagesApi.new
id = 56 # Integer | The ID of the stage
opts = {
  everyone: 0 # Float | If `everyone=1` is provided, deals summary will return deals owned by every user
}

begin
  # Get one stage
  result = api_instance.get_stage(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->get_stage: #{e}"
end
```

#### Using the get_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStageResponse200>, Integer, Hash)> get_stage_with_http_info(id, opts)

```ruby
begin
  # Get one stage
  data, status_code, headers = api_instance.get_stage_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStageResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->get_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the stage |  |
| **everyone** | **Float** | If &#x60;everyone&#x3D;1&#x60; is provided, deals summary will return deals owned by every user | [optional] |

### Return type

[**GetStageResponse200**](GetStageResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stage_deals

> <GetStageDealsResponse200> get_stage_deals(id, opts)

Get deals in a stage

Lists deals in a specific stage.

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

api_instance = OpenPipette::StagesApi.new
id = 56 # Integer | The ID of the stage
opts = {
  filter_id: 56, # Integer | If supplied, only deals matching the given filter will be returned
  user_id: 56, # Integer | If supplied, `filter_id` will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned.
  everyone: 0, # Float | If supplied, `filter_id` and `user_id` will not be considered – instead, deals owned by everyone will be returned
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get deals in a stage
  result = api_instance.get_stage_deals(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->get_stage_deals: #{e}"
end
```

#### Using the get_stage_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStageDealsResponse200>, Integer, Hash)> get_stage_deals_with_http_info(id, opts)

```ruby
begin
  # Get deals in a stage
  data, status_code, headers = api_instance.get_stage_deals_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStageDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->get_stage_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the stage |  |
| **filter_id** | **Integer** | If supplied, only deals matching the given filter will be returned | [optional] |
| **user_id** | **Integer** | If supplied, &#x60;filter_id&#x60; will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned. | [optional] |
| **everyone** | **Float** | If supplied, &#x60;filter_id&#x60; and &#x60;user_id&#x60; will not be considered – instead, deals owned by everyone will be returned | [optional] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetStageDealsResponse200**](GetStageDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_stages

> <GetStagesResponse200> get_stages(opts)

Get all stages

Returns data about all stages.

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

api_instance = OpenPipette::StagesApi.new
opts = {
  pipeline_id: 56, # Integer | The ID of the pipeline to fetch stages for. If omitted, stages for all pipelines will be fetched.
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get all stages
  result = api_instance.get_stages(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->get_stages: #{e}"
end
```

#### Using the get_stages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStagesResponse200>, Integer, Hash)> get_stages_with_http_info(opts)

```ruby
begin
  # Get all stages
  data, status_code, headers = api_instance.get_stages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStagesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->get_stages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_id** | **Integer** | The ID of the pipeline to fetch stages for. If omitted, stages for all pipelines will be fetched. | [optional] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetStagesResponse200**](GetStagesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_stage

> <StageResponse200> update_stage(id, opts)

Update stage details

Updates the properties of a stage.

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

api_instance = OpenPipette::StagesApi.new
id = 56 # Integer | The ID of the stage
opts = {
  update_stage_request: OpenPipette::UpdateStageRequest.new # UpdateStageRequest | 
}

begin
  # Update stage details
  result = api_instance.update_stage(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->update_stage: #{e}"
end
```

#### Using the update_stage_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<StageResponse200>, Integer, Hash)> update_stage_with_http_info(id, opts)

```ruby
begin
  # Update stage details
  data, status_code, headers = api_instance.update_stage_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <StageResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling StagesApi->update_stage_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the stage |  |
| **update_stage_request** | [**UpdateStageRequest**](UpdateStageRequest.md) |  | [optional] |

### Return type

[**StageResponse200**](StageResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

