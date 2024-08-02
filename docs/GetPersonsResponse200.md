# OpenPipette::GetPersonsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;PersonItem&gt;**](PersonItem.md) | The array of persons | [optional] |
| **additional_data** | [**GetActivitiesResponse200AdditionalData**](GetActivitiesResponse200AdditionalData.md) |  | [optional] |
| **related_objects** | [**GetOrganizationsResponse200AllOfRelatedObjects**](GetOrganizationsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPersonsResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

