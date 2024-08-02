# OpenPipette::GetProductFollowersResponseSuccessAllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The ID of the user | [optional] |
| **id** | **Integer** | The ID of the user follower | [optional] |
| **product_id** | **Integer** | The ID of the product | [optional] |
| **add_time** | **String** | The date and time when the follower was added to the person | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetProductFollowersResponseSuccessAllOfDataInner.new(
  user_id: null,
  id: null,
  product_id: null,
  add_time: null
)
```

