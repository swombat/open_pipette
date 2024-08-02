# OpenPipette::AddActivityResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **data** | [**ActivityResponseObject**](ActivityResponseObject.md) |  | [optional] |
| **additional_data** | [**AddActivityResponse200AdditionalData**](AddActivityResponse200AdditionalData.md) |  | [optional] |
| **related_objects** | [**AddActivityResponse200RelatedObjects**](AddActivityResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddActivityResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

