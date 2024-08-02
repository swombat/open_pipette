# OpenPipette::GetTasksResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** |  | [optional] |
| **data** | [**Array&lt;TaskResponseObject&gt;**](TaskResponseObject.md) |  | [optional] |
| **additional_data** | [**GetActivitiesCollectionResponse200AdditionalData**](GetActivitiesCollectionResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetTasksResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

