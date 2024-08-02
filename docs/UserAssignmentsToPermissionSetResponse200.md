# OpenPipette::UserAssignmentsToPermissionSetResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;UserAssignmentsToPermissionSetResponse200AllOfDataInner&gt;**](UserAssignmentsToPermissionSetResponse200AllOfDataInner.md) | An array of the assignments of the user | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UserAssignmentsToPermissionSetResponse200.new(
  success: null,
  data: null
)
```

