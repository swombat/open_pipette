# OpenPipette::AddPersonResponse200

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **success** | **Boolean** | If the response is successful or not | [optional] |
| **data** | [**PersonItem**](PersonItem.md) |  | [optional] |
| **related_objects** | [**ListProductsResponse200AllOfRelatedObjects**](ListProductsResponse200AllOfRelatedObjects.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddPersonResponse200.new(
  success: null,
  data: null,
  related_objects: null
)
```

