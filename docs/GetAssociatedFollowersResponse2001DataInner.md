# OpenPipette::GetAssociatedFollowersResponse2001DataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **org_id** | **Integer** | The ID of the organization | [optional] |
| **user_id** | **Integer** | The user ID of the follower related to the item | [optional] |
| **id** | **Integer** | The ID of the follower | [optional] |
| **add_time** | **Time** | The date and time of adding the follower to the item | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetAssociatedFollowersResponse2001DataInner.new(
  org_id: null,
  user_id: null,
  id: null,
  add_time: null
)
```

