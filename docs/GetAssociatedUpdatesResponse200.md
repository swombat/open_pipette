# OpenPipette::GetAssociatedUpdatesResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;GetAssociatedUpdatesResponse200AllOfDataInner&gt;**](GetAssociatedUpdatesResponse200AllOfDataInner.md) |  | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**GetAssociatedUpdatesResponse200AllOfRelatedObjects**](GetAssociatedUpdatesResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedUpdatesResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

