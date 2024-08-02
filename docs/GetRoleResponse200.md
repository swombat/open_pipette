# OpenPipette::GetRoleResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**SubRole**](SubRole.md) |  | [optional] |
| **additional_data** | [**GetRoleResponse200AllOfAdditionalData**](GetRoleResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetRoleResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

