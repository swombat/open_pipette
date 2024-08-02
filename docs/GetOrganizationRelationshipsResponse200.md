# OpenPipette::GetOrganizationRelationshipsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;OrganizationRelationshipDetails&gt;**](OrganizationRelationshipDetails.md) | The array of organization relationships | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**GetOrganizationRelationshipsResponse200AllOfRelatedObjects**](GetOrganizationRelationshipsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetOrganizationRelationshipsResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

