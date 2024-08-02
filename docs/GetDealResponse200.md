# OpenPipette::GetDealResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**DealNonStrictWithDetails**](DealNonStrictWithDetails.md) |  | [optional] |
| **additional_data** | [**GetDealResponse200AdditionalData**](GetDealResponse200AdditionalData.md) |  | [optional] |
| **related_objects** | [**GetDealResponse200RelatedObjects**](GetDealResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

