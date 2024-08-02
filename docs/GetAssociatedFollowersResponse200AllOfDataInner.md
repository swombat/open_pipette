# OpenPipette::GetAssociatedFollowersResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The ID of the user | [optional] |
| **id** | **Integer** | The ID of the user follower | [optional] |
| **deal_id** | **Integer** | The ID of the deal which the follower was added to | [optional] |
| **add_time** | **String** | The date and time when the follower was added to the person | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedFollowersResponse200AllOfDataInner.new(
  user_id: null,
  id: null,
  deal_id: null,
  add_time: null
)
```

