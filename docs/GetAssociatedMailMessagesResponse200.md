# OpenPipette::GetAssociatedMailMessagesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetAssociatedMailMessagesResponse200AllOfDataInner&gt;**](GetAssociatedMailMessagesResponse200AllOfDataInner.md) | The array of mail messages | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedMailMessagesResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

