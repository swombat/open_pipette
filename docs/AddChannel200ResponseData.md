# OpenPipette::AddChannel200ResponseData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique channel ID used internally in omnichannel-api and the frontend of the extension | [optional] |
| **name** | **String** | The name of the channel | [optional] |
| **avatar_url** | **String** | The URL for an icon that represents your channel | [optional] |
| **provider_channel_id** | **String** | The channel ID you specified while creating the channel | [optional] |
| **marketplace_client_id** | **String** | The client_id of your app in Pipedrive marketplace | [optional] |
| **pd_company_id** | **Integer** | The ID of the user&#39;s company in Pipedrive | [optional] |
| **pd_user_id** | **Integer** | The ID of the user in Pipedrive | [optional] |
| **created_at** | **Time** | The date and time when your channel was created in the API | [optional] |
| **provider_type** | **String** | Value of the provider_type sent to this endpoint | [optional] |
| **template_support** | **Boolean** | Value of the template_support sent to this endpoint | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddChannel200ResponseData.new(
  id: null,
  name: My Channel,
  avatar_url: http://some-domain.com/test.jpg,
  provider_channel_id: null,
  marketplace_client_id: null,
  pd_company_id: 1,
  pd_user_id: 1,
  created_at: null,
  provider_type: null,
  template_support: null
)
```

