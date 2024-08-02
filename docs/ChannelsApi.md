# OpenPipette::ChannelsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_channel**](ChannelsApi.md#add_channel) | **POST** /channels | Add a channel |
| [**delete_channel**](ChannelsApi.md#delete_channel) | **DELETE** /channels/{id} | Delete a channel |
| [**delete_conversation**](ChannelsApi.md#delete_conversation) | **DELETE** /channels/{channel-id}/conversations/{conversation-id} | Delete a conversation |
| [**receive_message**](ChannelsApi.md#receive_message) | **POST** /channels/messages/receive | Receives an incoming message |


## add_channel

> <AddChannel200Response> add_channel(opts)

Add a channel

Adds a new messaging channel, only admins are able to register new channels. It will use the getConversations endpoint to fetch conversations, participants and messages afterward. To use the endpoint, you need to have **Messengers integration** OAuth scope enabled and the Messaging manifest ready for the [Messaging app extension](https://pipedrive.readme.io/docs/messaging-app-extension).

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

api_instance = OpenPipette::ChannelsApi.new
opts = {
  add_channel_request: OpenPipette::AddChannelRequest.new({name: 'My Channel', provider_channel_id: 'provider_channel_id_example'}) # AddChannelRequest | 
}

begin
  # Add a channel
  result = api_instance.add_channel(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ChannelsApi->add_channel: #{e}"
end
```

#### Using the add_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AddChannel200Response>, Integer, Hash)> add_channel_with_http_info(opts)

```ruby
begin
  # Add a channel
  data, status_code, headers = api_instance.add_channel_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AddChannel200Response>
rescue OpenPipette::ApiError => e
  puts "Error when calling ChannelsApi->add_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_channel_request** | [**AddChannelRequest**](AddChannelRequest.md) |  | [optional] |

### Return type

[**AddChannel200Response**](AddChannel200Response.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_channel

> <DeleteChannel200Response> delete_channel(id)

Delete a channel

Deletes an existing messenger’s channel and all related entities (conversations and messages). To use the endpoint, you need to have **Messengers integration** OAuth scope enabled and the Messaging manifest ready for the [Messaging app extension](https://pipedrive.readme.io/docs/messaging-app-extension).

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

api_instance = OpenPipette::ChannelsApi.new
id = 'id_example' # String | The ID of the channel provided by the integration

begin
  # Delete a channel
  result = api_instance.delete_channel(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ChannelsApi->delete_channel: #{e}"
end
```

#### Using the delete_channel_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteChannel200Response>, Integer, Hash)> delete_channel_with_http_info(id)

```ruby
begin
  # Delete a channel
  data, status_code, headers = api_instance.delete_channel_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteChannel200Response>
rescue OpenPipette::ApiError => e
  puts "Error when calling ChannelsApi->delete_channel_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the channel provided by the integration |  |

### Return type

[**DeleteChannel200Response**](DeleteChannel200Response.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_conversation

> <DeleteChannel200Response> delete_conversation(channel_id, conversation_id)

Delete a conversation

Deletes an existing conversation. To use the endpoint, you need to have **Messengers integration** OAuth scope enabled and the Messaging manifest ready for the [Messaging app extension](https://pipedrive.readme.io/docs/messaging-app-extension).

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

api_instance = OpenPipette::ChannelsApi.new
channel_id = 'channel_id_example' # String | The ID of the channel provided by the integration
conversation_id = 'conversation_id_example' # String | The ID of the conversation provided by the integration

begin
  # Delete a conversation
  result = api_instance.delete_conversation(channel_id, conversation_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ChannelsApi->delete_conversation: #{e}"
end
```

#### Using the delete_conversation_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeleteChannel200Response>, Integer, Hash)> delete_conversation_with_http_info(channel_id, conversation_id)

```ruby
begin
  # Delete a conversation
  data, status_code, headers = api_instance.delete_conversation_with_http_info(channel_id, conversation_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeleteChannel200Response>
rescue OpenPipette::ApiError => e
  puts "Error when calling ChannelsApi->delete_conversation_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **channel_id** | **String** | The ID of the channel provided by the integration |  |
| **conversation_id** | **String** | The ID of the conversation provided by the integration |  |

### Return type

[**DeleteChannel200Response**](DeleteChannel200Response.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## receive_message

> <ReceiveMessage200Response> receive_message(opts)

Receives an incoming message

Adds a message to a conversation. To use the endpoint, you need to have **Messengers integration** OAuth scope enabled and the Messaging manifest ready for the [Messaging app extension](https://pipedrive.readme.io/docs/messaging-app-extension).

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

api_instance = OpenPipette::ChannelsApi.new
opts = {
  receive_message_request: OpenPipette::ReceiveMessageRequest.new({id: 'id_example', channel_id: 'channel_id_example', sender_id: 'sender_id_example', conversation_id: 'conversation_id_example', message: 'message_example', status: 'sent', created_at: Time.now}) # ReceiveMessageRequest | 
}

begin
  # Receives an incoming message
  result = api_instance.receive_message(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling ChannelsApi->receive_message: #{e}"
end
```

#### Using the receive_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReceiveMessage200Response>, Integer, Hash)> receive_message_with_http_info(opts)

```ruby
begin
  # Receives an incoming message
  data, status_code, headers = api_instance.receive_message_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReceiveMessage200Response>
rescue OpenPipette::ApiError => e
  puts "Error when calling ChannelsApi->receive_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **receive_message_request** | [**ReceiveMessageRequest**](ReceiveMessageRequest.md) |  | [optional] |

### Return type

[**ReceiveMessage200Response**](ReceiveMessage200Response.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

