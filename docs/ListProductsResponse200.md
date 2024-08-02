# OpenPipette::ListProductsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;ListProductsResponse200AllOfDataInner&gt;**](ListProductsResponse200AllOfDataInner.md) | The array of products | [optional] |
| **additional_data** | [**ListProductsResponse200AllOfAdditionalData**](ListProductsResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**ListProductsResponse200AllOfRelatedObjects**](ListProductsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ListProductsResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

