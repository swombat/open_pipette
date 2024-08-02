# OpenPipette::CurrenciesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_currencies**](CurrenciesApi.md#get_currencies) | **GET** /currencies | Get all supported currencies |


## get_currencies

> <GetCurrenciesResponse200> get_currencies(opts)

Get all supported currencies

Returns all supported currencies in given account which should be used when saving monetary values with other objects. The `code` parameter of the returning objects is the currency code according to ISO 4217 for all non-custom currencies.

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

api_instance = OpenPipette::CurrenciesApi.new
opts = {
  term: 'term_example' # String | Optional search term that is searched for from currency's name and/or code
}

begin
  # Get all supported currencies
  result = api_instance.get_currencies(opts)
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling CurrenciesApi->get_currencies: #{e}"
end
```

#### Using the get_currencies_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetCurrenciesResponse200>, Integer, Hash)> get_currencies_with_http_info(opts)

```ruby
begin
  # Get all supported currencies
  data, status_code, headers = api_instance.get_currencies_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetCurrenciesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling CurrenciesApi->get_currencies_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **term** | **String** | Optional search term that is searched for from currency&#39;s name and/or code | [optional] |

### Return type

[**GetCurrenciesResponse200**](GetCurrenciesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

