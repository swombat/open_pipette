# OpenPipette::MergePersonsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **merge_with_id** | **Integer** | The ID of the person that will not be overwritten. This person’s data will be prioritized in case of conflict with the other person. |  |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::MergePersonsRequest.new(
  merge_with_id: null
)
```

