# OpenPipette::GetFiltersResponse200AllOfDataInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the filter | [optional] |
| **name** | **String** | The name of the filter | [optional] |
| **active_flag** | **Boolean** | The active flag of the filter | [optional] |
| **type** | **String** | The type of the item | [optional] |
| **user_id** | **Integer** | The owner of the filter | [optional] |
| **add_time** | **String** | The date and time when the filter was added | [optional] |
| **update_time** | **String** | The date and time when the filter was updated | [optional] |
| **visible_to** | **Integer** | The visibility group ID of who can see then filter | [optional] |
| **custom_view_id** | **Integer** | Used by Pipedrive webapp | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetFiltersResponse200AllOfDataInner.new(
  id: null,
  name: null,
  active_flag: null,
  type: null,
  user_id: null,
  add_time: null,
  update_time: null,
  visible_to: null,
  custom_view_id: null
)
```

