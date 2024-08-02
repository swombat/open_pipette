# OpenPipette::UpdateActivityResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **data** | [**ActivityResponseObject**](ActivityResponseObject.md) |  | [optional] |
| **related_objects** | [**AddActivityResponse200RelatedObjects**](AddActivityResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::UpdateActivityResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

