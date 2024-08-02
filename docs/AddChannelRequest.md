# OpenPipette::AddChannelRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the channel |  |
| **provider_channel_id** | **String** | The channel ID |  |
| **avatar_url** | **String** | The URL for an icon that represents your channel | [optional] |
| **template_support** | **Boolean** | If true, enables templates logic on UI. Requires getTemplates endpoint implemented. Find out more [here](https://pipedrive.readme.io/docs/implementing-messaging-app-extension). | [optional][default to false] |
| **provider_type** | **String** | It controls the icons (like the icon next to the conversation) | [optional][default to &#39;other&#39;] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddChannelRequest.new(
  name: My Channel,
  provider_channel_id: null,
  avatar_url: null,
  template_support: null,
  provider_type: null
)
```

