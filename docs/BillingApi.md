# OpenPipette::BillingApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_company_addons**](BillingApi.md#get_company_addons) | **GET** /billing/subscriptions/addons | Get all add-ons for a single company |


## get_company_addons

> <SubscriptionAddonsResponse200> get_company_addons

Get all add-ons for a single company

Returns the add-ons for a single company.

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

api_instance = OpenPipette::BillingApi.new

begin
  # Get all add-ons for a single company
  result = api_instance.get_company_addons
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling BillingApi->get_company_addons: #{e}"
end
```

#### Using the get_company_addons_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SubscriptionAddonsResponse200>, Integer, Hash)> get_company_addons_with_http_info

```ruby
begin
  # Get all add-ons for a single company
  data, status_code, headers = api_instance.get_company_addons_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SubscriptionAddonsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling BillingApi->get_company_addons_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**SubscriptionAddonsResponse200**](SubscriptionAddonsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

