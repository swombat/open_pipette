# OpenPipette::GetDealsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;DealNonStrict&gt;**](DealNonStrict.md) | The array of deals | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**GetDealsResponse200RelatedObjects**](GetDealsResponse200RelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetDealsResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

