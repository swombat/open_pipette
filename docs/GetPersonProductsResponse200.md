# OpenPipette::GetPersonProductsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetPersonProductsResponse200AllOfDataInner&gt;**](GetPersonProductsResponse200AllOfDataInner.md) | The array of deal products | [optional] |
| **additional_data** | [**GetActivitiesResponse200AdditionalData**](GetActivitiesResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetPersonProductsResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

