# OpenPipette::DealPersonDataWithId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **active_flag** | **Boolean** | Whether the associated person is active or not | [optional] |
| **name** | **String** | The name of the person associated with the deal | [optional] |
| **email** | [**Array&lt;DealPersonDataWithIdAllOfEmailInner&gt;**](DealPersonDataWithIdAllOfEmailInner.md) | The emails of the person associated with the deal | [optional] |
| **phone** | [**Array&lt;DealPersonDataWithIdAllOfPhoneInner&gt;**](DealPersonDataWithIdAllOfPhoneInner.md) | The phone numbers of the person associated with the deal | [optional] |
| **owner_id** | **Integer** | The ID of the owner of the person that is associated with the deal | [optional] |
| **value** | **Integer** | The ID of the person associated with the deal | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::DealPersonDataWithId.new(
  active_flag: null,
  name: null,
  email: null,
  phone: null,
  owner_id: null,
  value: null
)
```

