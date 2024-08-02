# OpenPipette::GetOrganizationRelationshipResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**OrganizationRelationshipWithCalculatedFields**](OrganizationRelationshipWithCalculatedFields.md) |  | [optional] |
| **related_objects** | [**GetOrganizationRelationshipsResponse200AllOfRelatedObjects**](GetOrganizationRelationshipsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetOrganizationRelationshipResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

