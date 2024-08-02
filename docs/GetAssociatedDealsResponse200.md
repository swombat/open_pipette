# OpenPipette::GetAssociatedDealsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;DealNonStrict&gt;**](DealNonStrict.md) | The array of deals | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**GetAssociatedDealsResponse200AllOfRelatedObjects**](GetAssociatedDealsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedDealsResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

