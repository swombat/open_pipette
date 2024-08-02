# OpenPipette::WebhooksApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_webhook**](WebhooksApi.md#add_webhook) | **POST** /webhooks | Create a new Webhook |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{id} | Delete existing Webhook |
| [**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /webhooks | Get all Webhooks |


## add_webhook

> <WebhookResponse200> add_webhook(opts)

Create a new Webhook

Creates a new Webhook and returns its details. Note that specifying an event which triggers the Webhook combines 2 parameters - `event_action` and `event_object`. E.g., use `*.*` for getting notifications about all events, `added.deal` for any newly added deals, `deleted.persons` for any deleted persons, etc. See <a href=\"https://pipedrive.readme.io/docs/guide-for-webhooks?ref=api_reference\" target=\"_blank\" rel=\"noopener noreferrer\">the guide for Webhooks</a> for more details.

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

api_instance = OpenPipette::WebhooksApi.new
opts = {
  add_webhook_request: OpenPipette::AddWebhookRequest.new({subscription_url: 'subscription_url_example', event_action: 'added', event_object: 'activity'}) # AddWebhookRequest | 
}

begin
  # Create a new Webhook
  result = api_instance.add_webhook(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling WebhooksApi->add_webhook: #{e}"
end
```

#### Using the add_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WebhookResponse200>, Integer, Hash)> add_webhook_with_http_info(opts)

```ruby
begin
  # Create a new Webhook
  data, status_code, headers = api_instance.add_webhook_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WebhookResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling WebhooksApi->add_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_webhook_request** | [**AddWebhookRequest**](AddWebhookRequest.md) |  | [optional] |

### Return type

[**WebhookResponse200**](WebhookResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> <BaseResponse200> delete_webhook(id)

Delete existing Webhook

Deletes the specified Webhook.

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

api_instance = OpenPipette::WebhooksApi.new
id = 56 # Integer | The ID of the Webhook to delete

begin
  # Delete existing Webhook
  result = api_instance.delete_webhook(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BaseResponse200>, Integer, Hash)> delete_webhook_with_http_info(id)

```ruby
begin
  # Delete existing Webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BaseResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the Webhook to delete |  |

### Return type

[**BaseResponse200**](BaseResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhooks

> <GetWebhooksResponse200> get_webhooks

Get all Webhooks

Returns data about all the Webhooks of a company.

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

api_instance = OpenPipette::WebhooksApi.new

begin
  # Get all Webhooks
  result = api_instance.get_webhooks
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks: #{e}"
end
```

#### Using the get_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetWebhooksResponse200>, Integer, Hash)> get_webhooks_with_http_info

```ruby
begin
  # Get all Webhooks
  data, status_code, headers = api_instance.get_webhooks_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetWebhooksResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling WebhooksApi->get_webhooks_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetWebhooksResponse200**](GetWebhooksResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

