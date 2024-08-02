# OpenPipette::GetDealsCollectionResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;DealCollectionResponseObject&gt;**](DealCollectionResponseObject.md) |  | [optional] |
| **additional_data** | [**GetActivitiesCollectionResponse200AdditionalData**](GetActivitiesCollectionResponse200AdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealsCollectionResponse200.new(
  success: null,
  data: null,
  additional_data: null
)
```

