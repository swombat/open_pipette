# OpenPipette::ParticipantChangelogItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **actor_user_id** | **Integer** | The ID of the user | [optional] |
| **person_id** | **Integer** | The ID of the person | [optional] |
| **action** | **String** | Deal participant action type | [optional] |
| **time** | **String** | The deal participant action log time | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::ParticipantChangelogItem.new(
  actor_user_id: null,
  person_id: null,
  action: null,
  time: null
)
```

