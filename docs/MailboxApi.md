# OpenPipette::MailboxApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_mail_thread**](MailboxApi.md#delete_mail_thread) | **DELETE** /mailbox/mailThreads/{id} | Delete mail thread |
| [**get_mail_message**](MailboxApi.md#get_mail_message) | **GET** /mailbox/mailMessages/{id} | Get one mail message |
| [**get_mail_thread**](MailboxApi.md#get_mail_thread) | **GET** /mailbox/mailThreads/{id} | Get one mail thread |
| [**get_mail_thread_messages**](MailboxApi.md#get_mail_thread_messages) | **GET** /mailbox/mailThreads/{id}/mailMessages | Get all mail messages of mail thread |
| [**get_mail_threads**](MailboxApi.md#get_mail_threads) | **GET** /mailbox/mailThreads | Get mail threads |
| [**update_mail_thread_details**](MailboxApi.md#update_mail_thread_details) | **PUT** /mailbox/mailThreads/{id} | Update mail thread details |


## delete_mail_thread

> <DeleteMailThreadResponse200> delete_mail_thread(id)

Delete mail thread

Marks a mail thread as deleted.

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

api_instance = OpenPipette::MailboxApi.new
id = 56 # Integer | The ID of the mail thread

begin
  # Delete mail thread
  result = api_instance.delete_mail_thread(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->delete_mail_thread: #{e}"
end
```

#### Using the delete_mail_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteMailThreadResponse200>, Integer, Hash)> delete_mail_thread_with_http_info(id)

```ruby
begin
  # Delete mail thread
  data, status_code, headers = api_instance.delete_mail_thread_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteMailThreadResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->delete_mail_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the mail thread |  |

### Return type

[**DeleteMailThreadResponse200**](DeleteMailThreadResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mail_message

> <MailMessageResponse200> get_mail_message(id, opts)

Get one mail message

Returns data about a specific mail message.

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

api_instance = OpenPipette::MailboxApi.new
id = 56 # Integer | The ID of the mail message to fetch
opts = {
  include_body: 0 # Float | Whether to include the full message body or not. `0` = Don't include, `1` = Include.
}

begin
  # Get one mail message
  result = api_instance.get_mail_message(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->get_mail_message: #{e}"
end
```

#### Using the get_mail_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MailMessageResponse200>, Integer, Hash)> get_mail_message_with_http_info(id, opts)

```ruby
begin
  # Get one mail message
  data, status_code, headers = api_instance.get_mail_message_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MailMessageResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->get_mail_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the mail message to fetch |  |
| **include_body** | **Float** | Whether to include the full message body or not. &#x60;0&#x60; &#x3D; Don&#39;t include, &#x60;1&#x60; &#x3D; Include. | [optional][default to 0] |

### Return type

[**MailMessageResponse200**](MailMessageResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mail_thread

> <GetOneMailThreadResponse200> get_mail_thread(id)

Get one mail thread

Returns a specific mail thread.

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

api_instance = OpenPipette::MailboxApi.new
id = 56 # Integer | The ID of the mail thread

begin
  # Get one mail thread
  result = api_instance.get_mail_thread(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->get_mail_thread: #{e}"
end
```

#### Using the get_mail_thread_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetOneMailThreadResponse200>, Integer, Hash)> get_mail_thread_with_http_info(id)

```ruby
begin
  # Get one mail thread
  data, status_code, headers = api_instance.get_mail_thread_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetOneMailThreadResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->get_mail_thread_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the mail thread |  |

### Return type

[**GetOneMailThreadResponse200**](GetOneMailThreadResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mail_thread_messages

> <GetAllMailMessagesOfMailThreadResponse200> get_mail_thread_messages(id)

Get all mail messages of mail thread

Returns all the mail messages inside a specified mail thread.

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

api_instance = OpenPipette::MailboxApi.new
id = 56 # Integer | The ID of the mail thread

begin
  # Get all mail messages of mail thread
  result = api_instance.get_mail_thread_messages(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->get_mail_thread_messages: #{e}"
end
```

#### Using the get_mail_thread_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetAllMailMessagesOfMailThreadResponse200>, Integer, Hash)> get_mail_thread_messages_with_http_info(id)

```ruby
begin
  # Get all mail messages of mail thread
  data, status_code, headers = api_instance.get_mail_thread_messages_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetAllMailMessagesOfMailThreadResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->get_mail_thread_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the mail thread |  |

### Return type

[**GetAllMailMessagesOfMailThreadResponse200**](GetAllMailMessagesOfMailThreadResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_mail_threads

> <GetMailThreadsResponse200> get_mail_threads(folder, opts)

Get mail threads

Returns mail threads in a specified folder ordered by the most recent message within.

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

api_instance = OpenPipette::MailboxApi.new
folder = 'inbox' # String | The type of folder to fetch
opts = {
  start: 56, # Integer | Pagination start
  limit: 56 # Integer | Items shown per page
}

begin
  # Get mail threads
  result = api_instance.get_mail_threads(folder, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->get_mail_threads: #{e}"
end
```

#### Using the get_mail_threads_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetMailThreadsResponse200>, Integer, Hash)> get_mail_threads_with_http_info(folder, opts)

```ruby
begin
  # Get mail threads
  data, status_code, headers = api_instance.get_mail_threads_with_http_info(folder, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetMailThreadsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->get_mail_threads_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **folder** | **String** | The type of folder to fetch | [default to &#39;inbox&#39;] |
| **start** | **Integer** | Pagination start | [optional][default to 0] |
| **limit** | **Integer** | Items shown per page | [optional] |

### Return type

[**GetMailThreadsResponse200**](GetMailThreadsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_mail_thread_details

> <UpdateMailThreadDetailsResponse200> update_mail_thread_details(id, opts)

Update mail thread details

Updates the properties of a mail thread.

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

api_instance = OpenPipette::MailboxApi.new
id = 56 # Integer | The ID of the mail thread
opts = {
  deal_id: 56, # Integer | The ID of the deal this thread is associated with
  lead_id: '38400000-8cf0-11bd-b23e-10b96e4ef00d', # String | The ID of the lead this thread is associated with
  shared_flag: 0, # Float | 
  read_flag: 0, # Float | 
  archived_flag: 0 # Float | 
}

begin
  # Update mail thread details
  result = api_instance.update_mail_thread_details(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->update_mail_thread_details: #{e}"
end
```

#### Using the update_mail_thread_details_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UpdateMailThreadDetailsResponse200>, Integer, Hash)> update_mail_thread_details_with_http_info(id, opts)

```ruby
begin
  # Update mail thread details
  data, status_code, headers = api_instance.update_mail_thread_details_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UpdateMailThreadDetailsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling MailboxApi->update_mail_thread_details_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the mail thread |  |
| **deal_id** | **Integer** | The ID of the deal this thread is associated with | [optional] |
| **lead_id** | **String** | The ID of the lead this thread is associated with | [optional] |
| **shared_flag** | **Float** |  | [optional] |
| **read_flag** | **Float** |  | [optional] |
| **archived_flag** | **Float** |  | [optional] |

### Return type

[**UpdateMailThreadDetailsResponse200**](UpdateMailThreadDetailsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/x-www-form-urlencoded
- **Accept**: application/json

