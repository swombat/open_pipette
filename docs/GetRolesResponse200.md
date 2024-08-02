# OpenPipette::GetRolesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;FullRole&gt;**](FullRole.md) | The array of roles | [optional] |
| **additional_data** | [**GetRolesResponse200AllOfAdditionalData**](GetRolesResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetRolesResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

