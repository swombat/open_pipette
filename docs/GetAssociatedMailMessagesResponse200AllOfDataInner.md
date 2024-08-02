# OpenPipette::GetAssociatedMailMessagesResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **object** | **String** | The type of the data item | [optional] |
| **timestamp** | **String** | The date and time when the item was created | [optional] |
| **data** | [**MailMessageItemForList**](MailMessageItemForList.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedMailMessagesResponse200AllOfDataInner.new(
  object: null,
  timestamp: null,
  data: null
)
```

