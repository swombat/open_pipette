# OpenPipette::GetNoteFieldsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetNoteFieldsResponse200AllOfDataInner&gt;**](GetNoteFieldsResponse200AllOfDataInner.md) |  | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetNoteFieldsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

