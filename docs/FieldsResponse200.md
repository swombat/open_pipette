# OpenPipette::FieldsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;FieldsResponse200AllOfDataInner&gt;**](FieldsResponse200AllOfDataInner.md) |  | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::FieldsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

