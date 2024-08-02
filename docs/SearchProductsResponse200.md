# OpenPipette::SearchProductsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**SearchProductsResponse200AllOfData**](SearchProductsResponse200AllOfData.md) |  | [optional] |
| **additional_data** | [**GetActivitiesResponse200AdditionalData**](GetActivitiesResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::SearchProductsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

