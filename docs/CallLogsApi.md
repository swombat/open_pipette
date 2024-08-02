# OpenPipette::CallLogsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_call_log**](CallLogsApi.md#add_call_log) | **POST** /callLogs | Add a call log |
| [**add_call_log_audio_file**](CallLogsApi.md#add_call_log_audio_file) | **POST** /callLogs/{id}/recordings | Attach an audio file to the call log |
| [**delete_call_log**](CallLogsApi.md#delete_call_log) | **DELETE** /callLogs/{id} | Delete a call log |
| [**get_call_log**](CallLogsApi.md#get_call_log) | **GET** /callLogs/{id} | Get details of a call log |
| [**get_user_call_logs**](CallLogsApi.md#get_user_call_logs) | **GET** /callLogs | Get all call logs assigned to a particular user |


## add_call_log

> <CallLogResponse200> add_call_log(opts)

Add a call log

Adds a new call log.

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

api_instance = OpenPipette::CallLogsApi.new
opts = {
  add_call_log_request: OpenPipette::AddCallLogRequest.new({outcome: 'connected', to_phone_number: 'to_phone_number_example', start_time: Time.now, end_time: Time.now}) # AddCallLogRequest | 
}

begin
  # Add a call log
  result = api_instance.add_call_log(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->add_call_log: #{e}"
end
```

#### Using the add_call_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallLogResponse200>, Integer, Hash)> add_call_log_with_http_info(opts)

```ruby
begin
  # Add a call log
  data, status_code, headers = api_instance.add_call_log_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallLogResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->add_call_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_call_log_request** | [**AddCallLogRequest**](AddCallLogRequest.md) |  | [optional] |

### Return type

[**CallLogResponse200**](CallLogResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_call_log_audio_file

> <BaseResponse> add_call_log_audio_file(id, file)

Attach an audio file to the call log

Adds an audio recording to the call log. That audio can be played by those who have access to the call log object.

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

api_instance = OpenPipette::CallLogsApi.new
id = '3cde3b05035cae14dcfc172bd8000d08' # String | The ID received when you create the call log
file = File.new('/path/to/some/file') # File | Audio file supported by the HTML5 specification

begin
  # Attach an audio file to the call log
  result = api_instance.add_call_log_audio_file(id, file)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->add_call_log_audio_file: #{e}"
end
```

#### Using the add_call_log_audio_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseResponse>, Integer, Hash)> add_call_log_audio_file_with_http_info(id, file)

```ruby
begin
  # Attach an audio file to the call log
  data, status_code, headers = api_instance.add_call_log_audio_file_with_http_info(id, file)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseResponse>
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->add_call_log_audio_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID received when you create the call log |  |
| **file** | **File** | Audio file supported by the HTML5 specification |  |

### Return type

[**BaseResponse**](BaseResponse.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: multipart/form-data
- **Accept**: application/json


## delete_call_log

> <BaseResponse> delete_call_log(id)

Delete a call log

Deletes a call log. If there is an audio recording attached to it, it will also be deleted. The related activity will not be removed by this request. If you want to remove the related activities, please use the endpoint which is specific for activities.

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

api_instance = OpenPipette::CallLogsApi.new
id = '3cde3b05035cae14dcfc172bd8000d08' # String | The ID received when you create the call log

begin
  # Delete a call log
  result = api_instance.delete_call_log(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->delete_call_log: #{e}"
end
```

#### Using the delete_call_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseResponse>, Integer, Hash)> delete_call_log_with_http_info(id)

```ruby
begin
  # Delete a call log
  data, status_code, headers = api_instance.delete_call_log_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseResponse>
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->delete_call_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID received when you create the call log |  |

### Return type

[**BaseResponse**](BaseResponse.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_call_log

> <CallLogResponse200> get_call_log(id)

Get details of a call log

Returns details of a specific call log.

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

api_instance = OpenPipette::CallLogsApi.new
id = '3cde3b05035cae14dcfc172bd8000d08' # String | The ID received when you create the call log

begin
  # Get details of a call log
  result = api_instance.get_call_log(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->get_call_log: #{e}"
end
```

#### Using the get_call_log_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallLogResponse200>, Integer, Hash)> get_call_log_with_http_info(id)

```ruby
begin
  # Get details of a call log
  data, status_code, headers = api_instance.get_call_log_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallLogResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->get_call_log_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID received when you create the call log |  |

### Return type

[**CallLogResponse200**](CallLogResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_call_logs

> <CallLogsResponse> get_user_call_logs(opts)

Get all call logs assigned to a particular user

Returns all call logs assigned to a particular user.

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

api_instance = OpenPipette::CallLogsApi.new
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | For pagination, the limit of entries to be returned. The upper limit is 50.
}

begin
  # Get all call logs assigned to a particular user
  result = api_instance.get_user_call_logs(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->get_user_call_logs: #{e}"
end
```

#### Using the get_user_call_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallLogsResponse>, Integer, Hash)> get_user_call_logs_with_http_info(opts)

```ruby
begin
  # Get all call logs assigned to a particular user
  data, status_code, headers = api_instance.get_user_call_logs_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallLogsResponse>
rescue OpenPipette::ApiError => e
  puts "Error when calling CallLogsApi->get_user_call_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | For pagination, the limit of entries to be returned. The upper limit is 50. | [optional] |

### Return type

[**CallLogsResponse**](CallLogsResponse.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

