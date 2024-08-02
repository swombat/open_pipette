# OpenPipette::FieldsResponse200AllOfAdditionalData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **more_items_in_collection** | **Boolean** | If there are more list items in the collection than displayed or not | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::FieldsResponse200AllOfAdditionalData.new(
  start: null,
  limit: null,
  more_items_in_collection: null
)
```

