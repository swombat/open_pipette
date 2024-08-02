# OpenPipette::GetAllMailMessagesOfMailThreadResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetAllMailMessagesOfMailThreadResponse200AllOfDataInner&gt;**](GetAllMailMessagesOfMailThreadResponse200AllOfDataInner.md) | The array of the mail messages of the mail thread | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAllMailMessagesOfMailThreadResponse200.new(
  success: null,
  data: null
)
```

