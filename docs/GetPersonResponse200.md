# OpenPipette::GetPersonResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**PersonItem**](PersonItem.md) |  | [optional] |
| **additional_data** | [**GetPersonResponse200AllOfAdditionalData**](GetPersonResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**GetOrganizationsResponse200AllOfRelatedObjects**](GetOrganizationsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPersonResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

