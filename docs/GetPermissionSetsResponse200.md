# OpenPipette::GetPermissionSetsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetPermissionSetsResponse200AllOfDataInner&gt;**](GetPermissionSetsResponse200AllOfDataInner.md) | The array of permission set | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPermissionSetsResponse200.new(
  success: null,
  data: null
)
```

