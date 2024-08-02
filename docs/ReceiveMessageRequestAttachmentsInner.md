# OpenPipette::ReceiveMessageRequestAttachmentsInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the attachment |  |
| **type** | **String** | The mime-type of the attachment |  |
| **name** | **String** | The name of the attachment | [optional] |
| **size** | **Float** | The size of the attachment | [optional] |
| **url** | **String** | A URL to the file |  |
| **preview_url** | **String** | A URL to a preview picture of the file | [optional] |
| **link_expires** | **Boolean** | If true, it will use the getMessageById endpoint for fetching updated attachment&#39;s urls. Find out more [here](https://pipedrive.readme.io/docs/implementing-messaging-app-extension) | [optional][default to false] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ReceiveMessageRequestAttachmentsInner.new(
  id: null,
  type: null,
  name: null,
  size: null,
  url: null,
  preview_url: null,
  link_expires: null
)
```

