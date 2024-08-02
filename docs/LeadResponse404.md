# OpenPipette::LeadResponse404

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **error** | **String** | The description of the error | [optional] |
| **error_info** | **String** | A message describing how to solve the problem | [optional] |
| **data** | **Object** |  | [optional] |
| **additional_data** | **Object** |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::LeadResponse404.new(
  success: false,
  error: null,
  error_info: null,
  data: null,
  additional_data: null
)
```

