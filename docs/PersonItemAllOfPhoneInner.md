# OpenPipette::PersonItemAllOfPhoneInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The phone number | [optional] |
| **primary** | **Boolean** | Boolean that indicates if phone number is primary for the person or not | [optional] |
| **label** | **String** | The label that indicates the type of the phone number. (Possible values - work, home, mobile or other) | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::PersonItemAllOfPhoneInner.new(
  value: null,
  primary: null,
  label: null
)
```

