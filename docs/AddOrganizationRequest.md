# OpenPipette::AddOrganizationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the organization |  |
| **add_time** | **String** | The optional creation date &amp; time of the organization in UTC. Format: YYYY-MM-DD HH:MM:SS | [optional] |
| **owner_id** | **Integer** | The ID of the user who will be marked as the owner of this organization. When omitted, the authorized user ID will be used. | [optional] |
| **label** | **Integer** | The ID of the label. | [optional] |
| **visible_to** | **String** |  | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::AddOrganizationRequest.new(
  name: null,
  add_time: null,
  owner_id: null,
  label: null,
  visible_to: null
)
```

