# OpenPipette::GetAssociatedActivitiesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;ActivityResponseObject&gt;**](ActivityResponseObject.md) | The array of activities | [optional] |
| **additional_data** | [**ActivityDistributionDataWithAdditionalData**](ActivityDistributionDataWithAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedActivitiesResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

