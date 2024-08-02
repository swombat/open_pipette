# OpenPipette::GetActivityResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **data** | [**ActivityResponseObject**](ActivityResponseObject.md) |  | [optional] |
| **related_objects** | [**GetActivitiesResponse200RelatedObjects**](GetActivitiesResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetActivityResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

