# OpenPipette::GetDealParticipantsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the request was successful or not | [optional] |
| **data** | [**Array&lt;PersonItem&gt;**](PersonItem.md) | The array of participants | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**GetDealsResponse200RelatedObjects**](GetDealsResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealParticipantsResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

