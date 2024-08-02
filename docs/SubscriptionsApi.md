# OpenPipette::SubscriptionsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**add_recurring_subscription**](SubscriptionsApi.md#add_recurring_subscription) | **POST** /subscriptions/recurring | Add a recurring subscription |
| [**add_subscription_installment**](SubscriptionsApi.md#add_subscription_installment) | **POST** /subscriptions/installment | Add an installment subscription |
| [**cancel_recurring_subscription**](SubscriptionsApi.md#cancel_recurring_subscription) | **PUT** /subscriptions/recurring/{id}/cancel | Cancel a recurring subscription |
| [**delete_subscription**](SubscriptionsApi.md#delete_subscription) | **DELETE** /subscriptions/{id} | Delete a subscription |
| [**find_subscription_by_deal**](SubscriptionsApi.md#find_subscription_by_deal) | **GET** /subscriptions/find/{dealId} | Find subscription by deal |
| [**get_subscription**](SubscriptionsApi.md#get_subscription) | **GET** /subscriptions/{id} | Get details of a subscription |
| [**get_subscription_payments**](SubscriptionsApi.md#get_subscription_payments) | **GET** /subscriptions/{id}/payments | Get all payments of a subscription |
| [**update_recurring_subscription**](SubscriptionsApi.md#update_recurring_subscription) | **PUT** /subscriptions/recurring/{id} | Update a recurring subscription |
| [**update_subscription_installment**](SubscriptionsApi.md#update_subscription_installment) | **PUT** /subscriptions/installment/{id} | Update an installment subscription |


## add_recurring_subscription

> <SubscriptionsIdResponse200> add_recurring_subscription(opts)

Add a recurring subscription

Adds a new recurring subscription.

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

api_instance = OpenPipette::SubscriptionsApi.new
opts = {
  add_recurring_subscription_request: OpenPipette::AddRecurringSubscriptionRequest.new({deal_id: 37, currency: 'currency_example', cadence_type: 'weekly', cycle_amount: 37, start_date: Date.today}) # AddRecurringSubscriptionRequest | 
}

begin
  # Add a recurring subscription
  result = api_instance.add_recurring_subscription(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->add_recurring_subscription: #{e}"
end
```

#### Using the add_recurring_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsIdResponse200>, Integer, Hash)> add_recurring_subscription_with_http_info(opts)

```ruby
begin
  # Add a recurring subscription
  data, status_code, headers = api_instance.add_recurring_subscription_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->add_recurring_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_recurring_subscription_request** | [**AddRecurringSubscriptionRequest**](AddRecurringSubscriptionRequest.md) |  | [optional] |

### Return type

[**SubscriptionsIdResponse200**](SubscriptionsIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## add_subscription_installment

> <SubscriptionsIdResponse200> add_subscription_installment(opts)

Add an installment subscription

Adds a new installment subscription.

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

api_instance = OpenPipette::SubscriptionsApi.new
opts = {
  add_subscription_installment_request: OpenPipette::AddSubscriptionInstallmentRequest.new({deal_id: 37, currency: 'currency_example', payments: [3.56]}) # AddSubscriptionInstallmentRequest | 
}

begin
  # Add an installment subscription
  result = api_instance.add_subscription_installment(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->add_subscription_installment: #{e}"
end
```

#### Using the add_subscription_installment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsIdResponse200>, Integer, Hash)> add_subscription_installment_with_http_info(opts)

```ruby
begin
  # Add an installment subscription
  data, status_code, headers = api_instance.add_subscription_installment_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->add_subscription_installment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **add_subscription_installment_request** | [**AddSubscriptionInstallmentRequest**](AddSubscriptionInstallmentRequest.md) |  | [optional] |

### Return type

[**SubscriptionsIdResponse200**](SubscriptionsIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## cancel_recurring_subscription

> <SubscriptionsIdResponse200> cancel_recurring_subscription(id, opts)

Cancel a recurring subscription

Cancels a recurring subscription.

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

api_instance = OpenPipette::SubscriptionsApi.new
id = 56 # Integer | The ID of the subscription
opts = {
  cancel_recurring_subscription_request: OpenPipette::CancelRecurringSubscriptionRequest.new # CancelRecurringSubscriptionRequest | 
}

begin
  # Cancel a recurring subscription
  result = api_instance.cancel_recurring_subscription(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->cancel_recurring_subscription: #{e}"
end
```

#### Using the cancel_recurring_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsIdResponse200>, Integer, Hash)> cancel_recurring_subscription_with_http_info(id, opts)

```ruby
begin
  # Cancel a recurring subscription
  data, status_code, headers = api_instance.cancel_recurring_subscription_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->cancel_recurring_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the subscription |  |
| **cancel_recurring_subscription_request** | [**CancelRecurringSubscriptionRequest**](CancelRecurringSubscriptionRequest.md) |  | [optional] |

### Return type

[**SubscriptionsIdResponse200**](SubscriptionsIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_subscription

> <SubscriptionsIdResponse200> delete_subscription(id)

Delete a subscription

Marks an installment or a recurring subscription as deleted.

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

api_instance = OpenPipette::SubscriptionsApi.new
id = 56 # Integer | The ID of the subscription

begin
  # Delete a subscription
  result = api_instance.delete_subscription(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->delete_subscription: #{e}"
end
```

#### Using the delete_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsIdResponse200>, Integer, Hash)> delete_subscription_with_http_info(id)

```ruby
begin
  # Delete a subscription
  data, status_code, headers = api_instance.delete_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->delete_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the subscription |  |

### Return type

[**SubscriptionsIdResponse200**](SubscriptionsIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## find_subscription_by_deal

> <SubscriptionsIdResponse200> find_subscription_by_deal(deal_id)

Find subscription by deal

Returns details of an installment or a recurring subscription by the deal ID.

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

api_instance = OpenPipette::SubscriptionsApi.new
deal_id = 56 # Integer | The ID of the deal

begin
  # Find subscription by deal
  result = api_instance.find_subscription_by_deal(deal_id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->find_subscription_by_deal: #{e}"
end
```

#### Using the find_subscription_by_deal_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsIdResponse200>, Integer, Hash)> find_subscription_by_deal_with_http_info(deal_id)

```ruby
begin
  # Find subscription by deal
  data, status_code, headers = api_instance.find_subscription_by_deal_with_http_info(deal_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->find_subscription_by_deal_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **deal_id** | **Integer** | The ID of the deal |  |

### Return type

[**SubscriptionsIdResponse200**](SubscriptionsIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscription

> <SubscriptionsIdResponse200> get_subscription(id)

Get details of a subscription

Returns details of an installment or a recurring subscription.

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

api_instance = OpenPipette::SubscriptionsApi.new
id = 56 # Integer | The ID of the subscription

begin
  # Get details of a subscription
  result = api_instance.get_subscription(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription: #{e}"
end
```

#### Using the get_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsIdResponse200>, Integer, Hash)> get_subscription_with_http_info(id)

```ruby
begin
  # Get details of a subscription
  data, status_code, headers = api_instance.get_subscription_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the subscription |  |

### Return type

[**SubscriptionsIdResponse200**](SubscriptionsIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_subscription_payments

> <PaymentResponse200> get_subscription_payments(id)

Get all payments of a subscription

Returns all payments of an installment or recurring subscription.

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

api_instance = OpenPipette::SubscriptionsApi.new
id = 56 # Integer | The ID of the subscription

begin
  # Get all payments of a subscription
  result = api_instance.get_subscription_payments(id)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_payments: #{e}"
end
```

#### Using the get_subscription_payments_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PaymentResponse200>, Integer, Hash)> get_subscription_payments_with_http_info(id)

```ruby
begin
  # Get all payments of a subscription
  data, status_code, headers = api_instance.get_subscription_payments_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PaymentResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->get_subscription_payments_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the subscription |  |

### Return type

[**PaymentResponse200**](PaymentResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_recurring_subscription

> <SubscriptionsIdResponse200> update_recurring_subscription(id, opts)

Update a recurring subscription

Updates a recurring subscription.

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

api_instance = OpenPipette::SubscriptionsApi.new
id = 56 # Integer | The ID of the subscription
opts = {
  update_recurring_subscription_request: OpenPipette::UpdateRecurringSubscriptionRequest.new({effective_date: Date.today}) # UpdateRecurringSubscriptionRequest | 
}

begin
  # Update a recurring subscription
  result = api_instance.update_recurring_subscription(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->update_recurring_subscription: #{e}"
end
```

#### Using the update_recurring_subscription_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsIdResponse200>, Integer, Hash)> update_recurring_subscription_with_http_info(id, opts)

```ruby
begin
  # Update a recurring subscription
  data, status_code, headers = api_instance.update_recurring_subscription_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->update_recurring_subscription_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the subscription |  |
| **update_recurring_subscription_request** | [**UpdateRecurringSubscriptionRequest**](UpdateRecurringSubscriptionRequest.md) |  | [optional] |

### Return type

[**SubscriptionsIdResponse200**](SubscriptionsIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_subscription_installment

> <SubscriptionsIdResponse200> update_subscription_installment(id, opts)

Update an installment subscription

Updates an installment subscription.

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

api_instance = OpenPipette::SubscriptionsApi.new
id = 56 # Integer | The ID of the subscription
opts = {
  update_subscription_installment_request: OpenPipette::UpdateSubscriptionInstallmentRequest.new({payments: [3.56]}) # UpdateSubscriptionInstallmentRequest | 
}

begin
  # Update an installment subscription
  result = api_instance.update_subscription_installment(id, opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription_installment: #{e}"
end
```

#### Using the update_subscription_installment_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionsIdResponse200>, Integer, Hash)> update_subscription_installment_with_http_info(id, opts)

```ruby
begin
  # Update an installment subscription
  data, status_code, headers = api_instance.update_subscription_installment_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionsIdResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling SubscriptionsApi->update_subscription_installment_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the subscription |  |
| **update_subscription_installment_request** | [**UpdateSubscriptionInstallmentRequest**](UpdateSubscriptionInstallmentRequest.md) |  | [optional] |

### Return type

[**SubscriptionsIdResponse200**](SubscriptionsIdResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

