# OpenPipette::NewFollowerResponse200Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The ID of the user that was added as follower | [optional] |
| **id** | **Integer** | The ID of the follower | [optional] |
| **product_id** | **Integer** | The ID of the product | [optional] |
| **add_time** | **String** | The follower creation time. Format: YYYY-MM-DD HH:MM:SS | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::NewFollowerResponse200Data.new(
  user_id: null,
  id: null,
  product_id: null,
  add_time: null
)
```

