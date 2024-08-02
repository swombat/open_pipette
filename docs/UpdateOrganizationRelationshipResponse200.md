# OpenPipette::UpdateOrganizationRelationshipResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**AddOrganizationRelationshipResponse200AllOfData**](AddOrganizationRelationshipResponse200AllOfData.md) |  | [optional] |
| **related_objects** | [**GetOrganizationRelationshipsResponse200AllOfRelatedObjects**](GetOrganizationRelationshipsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateOrganizationRelationshipResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

