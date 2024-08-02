# OpenPipette::GetRolesResponse200AllOfAdditionalDataPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **more_items_in_collection** | **Boolean** | Whether there are more list items in the collection than displayed | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetRolesResponse200AllOfAdditionalDataPagination.new(
  start: null,
  limit: null,
  more_items_in_collection: null
)
```

