# OpenPipette::AddPersonFollowerResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **Integer** | The ID of the user who was added as a follower to a person | [optional] |
| **id** | **Integer** | The ID of the follower | [optional] |
| **person_id** | **Integer** | The ID of the person to whom the follower was added | [optional] |
| **add_time** | **String** | The date and time when the follower was added to a person. Format: YYYY-MM-DD HH:MM:SS | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddPersonFollowerResponse200AllOfData.new(
  user_id: null,
  id: null,
  person_id: null,
  add_time: null
)
```

