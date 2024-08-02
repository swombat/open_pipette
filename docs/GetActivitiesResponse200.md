# OpenPipette::GetActivitiesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **data** | [**Array&lt;ActivityResponseObject&gt;**](ActivityResponseObject.md) |  | [optional] |
| **additional_data** | [**GetActivitiesResponse200AdditionalData**](GetActivitiesResponse200AdditionalData.md) |  | [optional] |
| **related_objects** | [**GetActivitiesResponse200RelatedObjects**](GetActivitiesResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetActivitiesResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

