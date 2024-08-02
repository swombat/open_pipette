# OpenPipette::GetProductsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetproductResponse200&gt;**](GetproductResponse200.md) | Array containing data for all products | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**GetActivitiesResponse200RelatedObjects**](GetActivitiesResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetProductsResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

