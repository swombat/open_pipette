# OpenPipette::AddDealFollowerResponse200Data

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The user ID who added the follower | [optional] |
| **id** | **Integer** | The follower ID | [optional] |
| **deal_id** | **Integer** | The ID of the deal which the follower was added to | [optional] |
| **add_time** | **String** | The date and time when the deal follower was added | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddDealFollowerResponse200Data.new(
  user_id: null,
  id: null,
  deal_id: null,
  add_time: null
)
```

