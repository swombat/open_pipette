# OpenPipette::GetLeadsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **data** | [**Array&lt;GetLeadsResponse200DataInner&gt;**](GetLeadsResponse200DataInner.md) |  | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetLeadsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

