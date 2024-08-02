# OpenPipette::PostFilterResponse200AllOfData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Integer** | The ID of the created filter | [optional] |
| **name** | **String** | The name of the created filter | [optional] |
| **active_flag** | **Boolean** | The activity flag of the created filter | [optional] |
| **type** | **String** |  | [optional] |
| **temporary_flag** | **Boolean** | If the created filter is temporary or not | [optional] |
| **user_id** | **Integer** | The user ID of the created filter | [optional] |
| **add_time** | **String** | The add time of the created filter | [optional] |
| **update_time** | **String** | The update time of the created filter | [optional] |
| **visible_to** | **Integer** | The visibility group ID of the created filter | [optional] |
| **custom_view_id** | **Integer** | The custom view ID of the created filter | [optional] |
| **conditions** | **Object** | The created filter conditions object | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PostFilterResponse200AllOfData.new(
  id: null,
  name: null,
  active_flag: null,
  type: null,
  temporary_flag: null,
  user_id: null,
  add_time: null,
  update_time: null,
  visible_to: null,
  custom_view_id: null,
  conditions: null
)
```

