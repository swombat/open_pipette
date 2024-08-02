# OpenPipette::GetNotesResponse200AdditionalDataPagination

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **start** | **Integer** | Pagination start | [optional] |
| **limit** | **Integer** | Items shown per page | [optional] |
| **more_items_in_collection** | **Boolean** | If there are more list items in the collection than displayed or not | [optional] |
| **next_start** | **Integer** | Next pagination start | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetNotesResponse200AdditionalDataPagination.new(
  start: null,
  limit: null,
  more_items_in_collection: null,
  next_start: null
)
```

