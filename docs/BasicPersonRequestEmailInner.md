# OpenPipette::BasicPersonRequestEmailInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | **String** | The email | [optional] |
| **primary** | **Boolean** | Boolean that indicates if email is primary for the person or not | [optional] |
| **label** | **String** | The label that indicates the type of the email. (Possible values - work, home or other) | [optional] |

## Example

```ruby
require 'open_pipette'

instance = OpenPipette::BasicPersonRequestEmailInner.new(
  value: null,
  primary: null,
  label: null
)
```

