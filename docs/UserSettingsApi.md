# OpenPipette::UserSettingsApi

All URIs are relative to *https://api.pipedrive.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_user_settings**](UserSettingsApi.md#get_user_settings) | **GET** /userSettings | List settings of an authorized user |


## get_user_settings

> <GetUserSettingsResponse200> get_user_settings

List settings of an authorized user

Lists the settings of an authorized user. Example response contains a shortened list of settings.

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

api_instance = OpenPipette::UserSettingsApi.new

begin
  # List settings of an authorized user
  result = api_instance.get_user_settings
  p result
rescue OpenPipette::ApiError => e
  puts "Error when calling UserSettingsApi->get_user_settings: #{e}"
end
```

#### Using the get_user_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetUserSettingsResponse200>, Integer, Hash)> get_user_settings_with_http_info

```ruby
begin
  # List settings of an authorized user
  data, status_code, headers = api_instance.get_user_settings_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetUserSettingsResponse200>
rescue OpenPipette::ApiError => e
  puts "Error when calling UserSettingsApi->get_user_settings_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**GetUserSettingsResponse200**](GetUserSettingsResponse200.md)

### Authorization

[api_key](../README.md#api_key), [oauth2](../README.md#oauth2)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

