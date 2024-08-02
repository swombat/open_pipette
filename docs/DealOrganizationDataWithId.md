# OpenPipette::DealOrganizationDataWithId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the organization associated with the deal | [optional] |
| **people_count** | **Integer** | The number of people connected with the organization that is associated with the deal | [optional] |
| **owner_id** | **Integer** | The ID of the owner of the organization that is associated with the deal | [optional] |
| **address** | **String** | The address of the organization that is associated with the deal | [optional] |
| **active_flag** | **Boolean** | Whether the associated organization is active or not | [optional] |
| **cc_email** | **String** | The BCC email of the organization associated with the deal | [optional] |
| **value** | **Integer** | The ID of the organization associated with the deal | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::DealOrganizationDataWithId.new(
  name: null,
  people_count: null,
  owner_id: null,
  address: null,
  active_flag: null,
  cc_email: null,
  value: null
)
```

