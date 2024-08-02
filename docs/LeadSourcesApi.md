# OpenPipette::LeadSourcesApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_lead_sources**](LeadSourcesApi.md#get_lead_sources) | **GET** /leadSources | Get all lead sources |


## get_lead_sources

> <GetLeadSourcesResponse200> get_lead_sources

Get all lead sources

Returns all lead sources. Please note that the list of lead sources is fixed, it cannot be modified. All leads created through the Pipedrive API will have a lead source `API` assigned. 

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

api_instance = OpenPipette::LeadSourcesApi.new

begin
  # Get all lead sources
  result = api_instance.get_lead_sources
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadSourcesApi->get_lead_sources: #{e}"
end
```

#### Using the get_lead_sources_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetLeadSourcesResponse200>, Integer, Hash)> get_lead_sources_with_http_info

```ruby
begin
  # Get all lead sources
  data, status_code, headers = api_instance.get_lead_sources_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetLeadSourcesResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling LeadSourcesApi->get_lead_sources_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetLeadSourcesResponse200**](GetLeadSourcesResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

