# OpenPipette::GetChangelogResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **field_key** | **String** | The key of the field that was changed | [optional] |
| **old_value** | **String** | The value of the field before the change | [optional] |
| **new_value** | **String** | The value of the field after the change | [optional] |
| **actor_user_id** | **Integer** | The ID of the user who made the change | [optional] |
| **time** | **String** | The date and time of the change | [optional] |
| **change_source** | **String** | The source of change, for example &#39;app&#39;, &#39;mobile&#39;, &#39;api&#39;, etc. | [optional] |
| **change_source_user_agent** | **String** | The user agent from which the change was made | [optional] |
| **is_bulk_update_flag** | **Boolean** | Whether the change was made as part of a bulk update | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetChangelogResponse200AllOfDataInner.new(
  field_key: null,
  old_value: null,
  new_value: null,
  actor_user_id: null,
  time: null,
  change_source: null,
  change_source_user_agent: null,
  is_bulk_update_flag: null
)
```

