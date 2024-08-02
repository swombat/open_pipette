# OpenPipette::GetRecentsResponse200AdditionalData

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **since_timestamp** | **String** | The timestamp in UTC. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **last_timestamp_on_page** | **String** | The timestamp in UTC. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **pagination** | [**FieldsResponse200AllOfAdditionalData**](FieldsResponse200AllOfAdditionalData.md) |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::GetRecentsResponse200AdditionalData.new(
  since_timestamp: null,
  last_timestamp_on_page: null,
  pagination: null
)
```

