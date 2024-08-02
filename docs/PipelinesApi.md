# OpenPipette::PipelinesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_pipeline**](PipelinesApi.md#add_pipeline) | **POST** /pipelines | Add a new pipeline |
| [**delete_pipeline**](PipelinesApi.md#delete_pipeline) | **DELETE** /pipelines/{id} | Delete a pipeline |
| [**get_pipeline**](PipelinesApi.md#get_pipeline) | **GET** /pipelines/{id} | Get one pipeline |
| [**get_pipeline_conversion_statistics**](PipelinesApi.md#get_pipeline_conversion_statistics) | **GET** /pipelines/{id}/conversion_statistics | Get deals conversion rates in pipeline |
| [**get_pipeline_deals**](PipelinesApi.md#get_pipeline_deals) | **GET** /pipelines/{id}/deals | Get deals in a pipeline |
| [**get_pipeline_movement_statistics**](PipelinesApi.md#get_pipeline_movement_statistics) | **GET** /pipelines/{id}/movement_statistics | Get deals movements in pipeline |
| [**get_pipelines**](PipelinesApi.md#get_pipelines) | **GET** /pipelines | Get all pipelines |
| [**update_pipeline**](PipelinesApi.md#update_pipeline) | **PUT** /pipelines/{id} | Update a pipeline |


## add_pipeline

> <AddPipelineResponse200> add_pipeline(opts)

Add a new pipeline

Adds a new pipeline.

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

api_instance = OpenPipette::PipelinesApi.new
opts = {
  pipeline_request: OpenPipette::PipelineRequest.new({name: 'name_example'}) # PipelineRequest | 
}

begin
  # Add a new pipeline
  result = api_instance.add_pipeline(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->add_pipeline: #{e}"
end
```

#### Using the add_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddPipelineResponse200>, Integer, Hash)> add_pipeline_with_http_info(opts)

```ruby
begin
  # Add a new pipeline
  data, status_code, headers = api_instance.add_pipeline_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddPipelineResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->add_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pipeline_request** | [**PipelineRequest**](PipelineRequest.md) |  | [optional] |

### Return type

[**AddPipelineResponse200**](AddPipelineResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_pipeline

> <DeletePipelineResponse200> delete_pipeline(id)

Delete a pipeline

Marks a pipeline as deleted.

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

api_instance = OpenPipette::PipelinesApi.new
id = 56 # Integer | The ID of the pipeline

begin
  # Delete a pipeline
  result = api_instance.delete_pipeline(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->delete_pipeline: #{e}"
end
```

#### Using the delete_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeletePipelineResponse200>, Integer, Hash)> delete_pipeline_with_http_info(id)

```ruby
begin
  # Delete a pipeline
  data, status_code, headers = api_instance.delete_pipeline_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeletePipelineResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->delete_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the pipeline |  |

### Return type

[**DeletePipelineResponse200**](DeletePipelineResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline

> <GetPipelineResponse200> get_pipeline(id, opts)

Get one pipeline

Returns data about a specific pipeline. Also returns the summary of the deals in this pipeline across its stages.

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

api_instance = OpenPipette::PipelinesApi.new
id = 56 # Integer | The ID of the pipeline
opts = {
  totals_convert_currency: 'totals_convert_currency_example' # String | The 3-letter currency code of any of the supported currencies. When supplied, `per_stages_converted` is returned in `deals_summary` which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to `default_currency` in which case users default currency is used.
}

begin
  # Get one pipeline
  result = api_instance.get_pipeline(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline: #{e}"
end
```

#### Using the get_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPipelineResponse200>, Integer, Hash)> get_pipeline_with_http_info(id, opts)

```ruby
begin
  # Get one pipeline
  data, status_code, headers = api_instance.get_pipeline_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPipelineResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the pipeline |  |
| **totals_convert_currency** | **String** | The 3-letter currency code of any of the supported currencies. When supplied, &#x60;per_stages_converted&#x60; is returned in &#x60;deals_summary&#x60; which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#x60;default_currency&#x60; in which case users default currency is used. | [optional] |

### Return type

[**GetPipelineResponse200**](GetPipelineResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_conversion_statistics

> <GetPipelineConversionStatisticsResponse200> get_pipeline_conversion_statistics(id, start_date, end_date, opts)

Get deals conversion rates in pipeline

Returns all stage-to-stage conversion and pipeline-to-close rates for the given time period.

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

api_instance = OpenPipette::PipelinesApi.new
id = 56 # Integer | The ID of the pipeline
start_date = Date.parse('2013-10-20') # Date | The start of the period. Date in format of YYYY-MM-DD.
end_date = Date.parse('2013-10-20') # Date | The end of the period. Date in format of YYYY-MM-DD.
opts = {
  user_id: 56 # Integer | The ID of the user who's pipeline metrics statistics to fetch. If omitted, the authorized user will be used.
}

begin
  # Get deals conversion rates in pipeline
  result = api_instance.get_pipeline_conversion_statistics(id, start_date, end_date, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_conversion_statistics: #{e}"
end
```

#### Using the get_pipeline_conversion_statistics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPipelineConversionStatisticsResponse200>, Integer, Hash)> get_pipeline_conversion_statistics_with_http_info(id, start_date, end_date, opts)

```ruby
begin
  # Get deals conversion rates in pipeline
  data, status_code, headers = api_instance.get_pipeline_conversion_statistics_with_http_info(id, start_date, end_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPipelineConversionStatisticsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_conversion_statistics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the pipeline |  |
| **start_date** | **Date** | The start of the period. Date in format of YYYY-MM-DD. |  |
| **end_date** | **Date** | The end of the period. Date in format of YYYY-MM-DD. |  |
| **user_id** | **Integer** | The ID of the user who&#39;s pipeline metrics statistics to fetch. If omitted, the authorized user will be used. | [optional] |

### Return type

[**GetPipelineConversionStatisticsResponse200**](GetPipelineConversionStatisticsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_deals

> <GetStageDealsResponse200> get_pipeline_deals(id, opts)

Get deals in a pipeline

Lists deals in a specific pipeline across all its stages.

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

api_instance = OpenPipette::PipelinesApi.new
id = 56 # Integer | The ID of the pipeline
opts = {
  filter_id: 56, # Integer | If supplied, only deals matching the given filter will be returned
  user_id: 56, # Integer | If supplied, `filter_id` will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned.
  everyone: 0, # Float | If supplied, `filter_id` and `user_id` will not be considered – instead, deals owned by everyone will be returned
  stage_id: 56, # Integer | If supplied, only deals within the given stage will be returned
  start: 56, # Integer | Pagination start
  limit: 56, # Integer | Items shown per page
  get_summary: 0, # Float | Whether to include a summary of the pipeline in the `additional_data` or not
  totals_convert_currency: 'totals_convert_currency_example' # String | The 3-letter currency code of any of the supported currencies. When supplied, `per_stages_converted` is returned inside `deals_summary` inside `additional_data` which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to `default_currency` in which case users default currency is used. Only works when `get_summary` parameter flag is enabled.
}

begin
  # Get deals in a pipeline
  result = api_instance.get_pipeline_deals(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_deals: #{e}"
end
```

#### Using the get_pipeline_deals_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetStageDealsResponse200>, Integer, Hash)> get_pipeline_deals_with_http_info(id, opts)

```ruby
begin
  # Get deals in a pipeline
  data, status_code, headers = api_instance.get_pipeline_deals_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetStageDealsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_deals_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the pipeline |  |
| **filter_id** | **Integer** | If supplied, only deals matching the given filter will be returned | [optional] |
| **user_id** | **Integer** | If supplied, &#x60;filter_id&#x60; will not be considered and only deals owned by the given user will be returned. If omitted, deals owned by the authorized user will be returned. | [optional] |
| **everyone** | **Float** | If supplied, &#x60;filter_id&#x60; and &#x60;user_id&#x60; will not be considered – instead, deals owned by everyone will be returned | [optional] |
| **stage_id** | **Integer** | If supplied, only deals within the given stage will be returned | [optional] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **get_summary** | **Float** | Whether to include a summary of the pipeline in the &#x60;additional_data&#x60; or not | [optional] |
| **totals_convert_currency** | **String** | The 3-letter currency code of any of the supported currencies. When supplied, &#x60;per_stages_converted&#x60; is returned inside &#x60;deals_summary&#x60; inside &#x60;additional_data&#x60; which contains the currency-converted total amounts in the given currency per each stage. You may also set this parameter to &#x60;default_currency&#x60; in which case users default currency is used. Only works when &#x60;get_summary&#x60; parameter flag is enabled. | [optional] |

### Return type

[**GetStageDealsResponse200**](GetStageDealsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipeline_movement_statistics

> <GetPipelineMovementStatisticsResponse200> get_pipeline_movement_statistics(id, start_date, end_date, opts)

Get deals movements in pipeline

Returns statistics for deals movements for the given time period.

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

api_instance = OpenPipette::PipelinesApi.new
id = 56 # Integer | The ID of the pipeline
start_date = Date.parse('2013-10-20') # Date | The start of the period. Date in format of YYYY-MM-DD.
end_date = Date.parse('2013-10-20') # Date | The end of the period. Date in format of YYYY-MM-DD.
opts = {
  user_id: 56 # Integer | The ID of the user who's pipeline statistics to fetch. If omitted, the authorized user will be used.
}

begin
  # Get deals movements in pipeline
  result = api_instance.get_pipeline_movement_statistics(id, start_date, end_date, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_movement_statistics: #{e}"
end
```

#### Using the get_pipeline_movement_statistics_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPipelineMovementStatisticsResponse200>, Integer, Hash)> get_pipeline_movement_statistics_with_http_info(id, start_date, end_date, opts)

```ruby
begin
  # Get deals movements in pipeline
  data, status_code, headers = api_instance.get_pipeline_movement_statistics_with_http_info(id, start_date, end_date, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPipelineMovementStatisticsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipeline_movement_statistics_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the pipeline |  |
| **start_date** | **Date** | The start of the period. Date in format of YYYY-MM-DD. |  |
| **end_date** | **Date** | The end of the period. Date in format of YYYY-MM-DD. |  |
| **user_id** | **Integer** | The ID of the user who&#39;s pipeline statistics to fetch. If omitted, the authorized user will be used. | [optional] |

### Return type

[**GetPipelineMovementStatisticsResponse200**](GetPipelineMovementStatisticsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_pipelines

> <GetPipelinesResponse200> get_pipelines

Get all pipelines

Returns data about all pipelines.

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

api_instance = OpenPipette::PipelinesApi.new

begin
  # Get all pipelines
  result = api_instance.get_pipelines
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipelines: #{e}"
end
```

#### Using the get_pipelines_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPipelinesResponse200>, Integer, Hash)> get_pipelines_with_http_info

```ruby
begin
  # Get all pipelines
  data, status_code, headers = api_instance.get_pipelines_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPipelinesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->get_pipelines_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetPipelinesResponse200**](GetPipelinesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_pipeline

> <UpdatePipelineResponse200> update_pipeline(id, opts)

Update a pipeline

Updates the properties of a pipeline.

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

api_instance = OpenPipette::PipelinesApi.new
id = 56 # Integer | The ID of the pipeline
opts = {
  pipeline_request1: OpenPipette::PipelineRequest1.new # PipelineRequest1 | 
}

begin
  # Update a pipeline
  result = api_instance.update_pipeline(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->update_pipeline: #{e}"
end
```

#### Using the update_pipeline_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdatePipelineResponse200>, Integer, Hash)> update_pipeline_with_http_info(id, opts)

```ruby
begin
  # Update a pipeline
  data, status_code, headers = api_instance.update_pipeline_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdatePipelineResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling PipelinesApi->update_pipeline_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the pipeline |  |
| **pipeline_request1** | [**PipelineRequest1**](PipelineRequest1.md) |  | [optional] |

### Return type

[**UpdatePipelineResponse200**](UpdatePipelineResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

