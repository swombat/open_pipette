# OpenPipette::UpdateOrganizationResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**BaseOrganizationItem**](BaseOrganizationItem.md) |  | [optional] |
| **related_objects** | [**GetOrganizationsResponse200AllOfRelatedObjects**](GetOrganizationsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateOrganizationResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

