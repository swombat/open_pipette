# OpenPipette::ListPersonsResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**Array&lt;PersonItem&gt;**](PersonItem.md) | The array of persons | [optional] |
| **additional_data** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |
| **related_objects** | [**ListPersonsResponse200AllOfRelatedObjects**](ListPersonsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ListPersonsResponse200.new(
  success: null,
  data: null,
  additional_data: null,
  related_objects: null
)
```

