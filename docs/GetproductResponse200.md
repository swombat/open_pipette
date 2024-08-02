# OpenPipette::GetproductResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**ListProductsResponse200AllOfDataInnerProduct**](ListProductsResponse200AllOfDataInnerProduct.md) |  | [optional] |
| **related_objects** | [**GetActivitiesResponse200RelatedObjects**](GetActivitiesResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetproductResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

