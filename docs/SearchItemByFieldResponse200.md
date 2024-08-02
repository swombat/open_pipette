# OpenPipette::SearchItemByFieldResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;SearchItemByFieldResponse200AllOfDataInner&gt;**](SearchItemByFieldResponse200AllOfDataInner.md) | The array of results | [optional] |
| **additional_data** | [**GetActivitiesResponse200AdditionalData**](GetActivitiesResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchItemByFieldResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

