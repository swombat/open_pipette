# OpenPipette::AddOrganizationResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**BaseOrganizationItemWithEditNameFlag**](BaseOrganizationItemWithEditNameFlag.md) |  | [optional] |
| **related_objects** | [**GetOrganizationsResponse200AllOfRelatedObjects**](GetOrganizationsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddOrganizationResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

