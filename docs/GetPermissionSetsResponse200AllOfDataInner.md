# OpenPipette::GetPermissionSetsResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of user permission set | [optional] |
| **name** | **String** | The name of the permission set | [optional] |
| **description** | **String** | The description of the permission set | [optional] |
| **app** | **String** | The app that permission set belongs to | [optional] |
| **type** | **String** | The type of permission set | [optional] |
| **assignment_count** | **Integer** | The number of users assigned to this permission set | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPermissionSetsResponse200AllOfDataInner.new(
  id: null,
  name: null,
  description: null,
  app: null,
  type: null,
  assignment_count: null
)
```

