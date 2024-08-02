# OpenPipette::GetOrganizationResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**OrganizationItem**](OrganizationItem.md) |  | [optional] |
| **additional_data** | [**GetOrganizationResponse200AllOfAdditionalData**](GetOrganizationResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**GetOrganizationsResponse200AllOfRelatedObjects**](GetOrganizationsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetOrganizationResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

