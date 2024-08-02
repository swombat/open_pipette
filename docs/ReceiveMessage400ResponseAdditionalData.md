# OpenPipette::ReceiveMessage400ResponseAdditionalData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **String** | An error code sent by the API | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ReceiveMessage400ResponseAdditionalData.new(
  code: INVALID_RECEIVE_MESSAGE_PAYLOAD
)
```

